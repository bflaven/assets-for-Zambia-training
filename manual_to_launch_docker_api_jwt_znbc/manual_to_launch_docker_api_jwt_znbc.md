# Manual for ZNBC to launch Docker + JWT plugin to secure WP API


All the steps to install WP with Docker then install the plugin JWT Authentication for [WP REST API](https://wordpress.org/plugins/jwt-authentication-for-wp-rest-api/) by Enrique Chavez to secure the WP API. 

Watch the video: [Enable JWT authentication for the Wordpress REST API by Adrian Oprea](https://www.youtube.com/watch?v=Mp7T7x1oxDk)


### 1. Be sure you have Docker install on your machine and it is up and running
**If not download it and install it**

### 2. In the console, go where you want to install Docker
``` bash
#in the console path to the directory
# cd /[path-to-your-wp-install-wp-with-docker-directory]/
cd /Users/brunoflaven/Documents/02_copy/_technical_training_zambia_znbc/000000_local_dev_docker/
mkdir docker_test_znbc_wp_1
cd docker_test_znbc_wp_1/

#create the 2 important files in the directory
touch Makefile
touch docker-compose.yml
```

### 3. Just make `ls -l` to ensure that the required files are here.



### 4. Type `make start` to launch the install.

CAUTION_1: Be careful with the blanks instead of the tabs inside your makefile. Remove the blanks if you cut and paste from a GitHub readme.md file, replace blanks by tabs.
You obtain a blank with the space bar, so to make indention in our make file, do not use your keyboards computer space bar.

CAUTION_2: When you launch the makefile, Docker will download all the e required elements. It may take a certain time, ensure that you have a good connection and leave your computer work for you and grab a coffee.


**For the first time, it may take more than 20 minutes to download all the containers.**

### 5. Finish the installation through the browser
Access to WP Front-office: http://localhost:8080/
Access to WP Back-office: http://localhost:8080/wp-admin/
Access to phpMyAdmin: http://localhost:22222/

```bash
# show the running instances
docker-compose ps 
#or use the command in the makefile
make ps
```


### 6. Play with WP-CLI
Be sure to be in the proper directory before you launch the command `make cli` that will give you an access in bash inside the WP in Docker.

```bash

# Description: launch a console for WP-CLI
docker-compose run --rm cli bash
#or use the command in the makefile
make cli
```

**Some command to play with WP-CLI**
```bash
# manage themes
wp theme list
wp theme activate twentynineteen #already active
wp theme activate twentyseventeen #active twentyseventeen
wp theme search bootstrap #search for new theme with the chain bootstrap
wp theme install ultrabootstrap --activate #install and activate the theme ultrabootstrap

#manage plugin
wp plugin list #list the plugins
wp plugin search "clone" #search for plugin
# USE the slug to install the plugin
wp plugin install duplicate-post --activate #install and activate Duplicate Post

wp plugin search "JWT Authentication" #search for plugin
# USE the slug to install the plugin
wp plugin install jwt-authentication-for-wp-rest-api --activate #install and activate JWT Authentication

wp plugin search "Disable Gutenberg" #search for plugin
# USE the slug to install the plugin
wp plugin install disable-gutenberg --activate #install and activate Disable Gutenberg

#manage update
wp core update #update the WP
wp core update-db #update the DB
wp theme update --all #update the themes
wp plugin update --all #update the plugins

#manage content show the list of posts
wp post list

#generate 100 fake posts
wp post generate --count=100

#generate a fake post from a text file
wp post create ./_fake_content_files/lorem_fake_post.txt --post_title='2 Fake post example from a txt file' --post_status=publish
```
### 6. Play with the WP API and the WP API endpoints pattern**
CAUTION: before accessing to simple URLs for your WP API, you'd better change the permalinks in General Settings > Permalink Settings. Choose the format you want to play with e.g. Day and name and keep stick to it in Postman.
In Postman, you can save them in collection that will always work.


```bash
# DOCKER_znbc_main_url in Postman, show main url of the WP API
http://localhost:8080/wp-json/

# DOCKER_znbc_show_post in Postman, show Posts of the WP API
http://localhost:8080/wp-json/wp/v2/posts/

```


### 7. Add this to your `.htaccess` file by adding the following to enable `HTTP Authorization Header`**
CAUTION: You have to change the `.htaccess` of your WP

``` apacheconf

# BEGIN WordPress
<IfModule mod_rewrite.c>
RewriteEngine On
RewriteBase /
RewriteRule ^index\.php$ - [L]
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule . /index.php [L]

# SECURITY FOR API 
RewriteCond %{HTTP:Authorization} ^(.*)
RewriteRule ^(.*) - [E=HTTP_AUTHORIZATION:%1]
SetEnvIf Authorization "(.*)" HTTP_AUTHORIZATION=$1
# END SECURITY FOR API
</IfModule>

# END WordPress

```

### 8. Changes in your `wp-config.php` file. 
Add a new constant called `JWT_AUTH_CORS_ENABLE` to enable the CORs Support and the **secret key** to your `wp-config.php` file and add a new constant called `JWT_AUTH_SECRET_KEY`.

CAUTION: You have to change the `wp-config.php` of your WP

**Add these lines to `wp-config.php`**
```php
# SECURITY FOR API for JWT plugin

# Add JWT_AUTH_CORS_ENABLE to enable the CORs
define('JWT_AUTH_CORS_ENABLE', true);

# Add JWT_AUTH_SECRET_KEY to enable the CORs
define('JWT_AUTH_SECRET_KEY', 'your-top-secret-key');

# END SECURITY FOR API
```


### 9. Check the JWT plugin endpoints for your API
CAUTION: When you have done the changes 7 and 8. YOU HAVE TO RESTART YOUR DOCKER so that your changes will be taken into account.

```bash
# STOP & RESTART YOUR WP DOCKER
make stop
make start
# normally your changes are made in your Docker WP and so your WP API.

```

**Ensure the endpoint is working for JWT plugin**
```bash
# DOCKER_znbc_get_jwt_auth in Postman
# CAUTION action is GET in Postman
http://localhost:8080/wp-json/jwt-auth/v1
```

**You will get an error response from the server because you are authenticated user**
```bash
# DOCKER_znbc_get_jwt_auth_token in Postman
# CAUTION action is POST in Postman
http://localhost:8080/wp-json/jwt-auth/v1/token
```

```json
{
    "code": "[jwt_auth] empty_username",
    "message": "<strong>ERROR</strong>: The username field is empty.",
    "data": {
        "status": 403
    }
}
```


### 10. Authenticate with help of your WP Admin's credentials for instance `admin:admin`

| FIELD                 | VALUE |
| -------------------   | ------|
| **username**          | admin |
| **password**          | admin |

```bash
# DOCKER_znbc_get_jwt_auth_token_validate in Postman
http://localhost:8080/wp-json/jwt-auth/v1/token/validate
```

**You are good!**
```json
{
    "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODA4MCIsImlhdCI6MTU1NTczOTgwOSwibmJmIjoxNTU1NzM5ODA5LCJleHAiOjE1NTYzNDQ2MDksImRhdGEiOnsidXNlciI6eyJpZCI6IjEifX19.0gOsfQoVEtyDscHFMuKlOZT8APDD1tr4YKYugP7TnFI",
    "user_email": "docker_test_znbc_wp_1@gmail.com",
    "user_nicename": "admin",
    "user_display_name": "admin"
}
```




**In postman, with your WP Admin's credentials for instance `admin:admin`, you get the token!**
![In postman, with your WP Admin's credentials for instance `admin:admin`, you get the token!](./images/jwt_authenticate_postman.png)


**Failed to filter on status**
![Failed to filter on status](./images/jwt_authenticate_private_post_postman.png)

**:(**
```json
{
    "code": "rest_invalid_param",
    "message": "Invalid parameter(s): status",
    "data": {
        "status": 400,
        "params": {
            "status": "Status is forbidden."
        }
    }
}
```
