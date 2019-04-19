
# Making plugin with Class
A shortcut to create a plugin with code base for ZNBC, including best practices (composer, namespaces, class) in 5 steps.

### 1. Be sure to be in the correct directory
``` bash
#create the plugin directory
cd /Applications/MAMP/htdocs/wordpress/wp-content/plugins/
mkdir 7_ZNBC_plugin_oop
cd 7_ZNBC_plugin_oop

## Check where you are if you are in the correct directory 7_ZNBC_plugin_oop
pwd

## Create the plugin file
touch 7_ZNBC_plugin_oop.php

## Create the directories
mkdir src
mkdir src/ZnbcTadalist
mkdir src/ZnbcTadalist/Models
mkdir src/ZnbcTadalist/WordPress
mkdir src/ZnbcTadalist/WordPress/Helpers
mkdir src/ZnbcTadalist/WordPress/PostType
mkdir src/ZnbcTadalist/WordPress/Taxonomy


## Create the files for Class and Models
touch src/ZnbcTadalist/ZnbcTadalist.php
touch src/ZnbcTadalist/Models/HooksAdminInterface.php
touch src/ZnbcTadalist/Models/HooksFrontInterface.php
touch src/ZnbcTadalist/Models/HooksInterface.php


## Create the files for Helpers and PostType
touch src/ZnbcTadalist/WordPress/Helpers/PostType.php
touch src/ZnbcTadalist/WordPress/PostType/Tada.php
touch src/ZnbcTadalist/WordPress/Taxonomy/State.php




##Be sure to be at the root of your plugin directory
cd /Applications/MAMP/htdocs/wordpress/wp-content/plugins/7_ZNBC_plugin_oop
#To initiate the creation of the composer.json
#BE SURE TO FOLLOW THE INSTRUCTIONS
composer init
```


### 2. Add under author in the composer.json
``` json
"autoload": {
        "psr-4": {
            "ZnbcTadalist\\": "src/ZnbcTadalist/"
        }
    }
```
### 3. Launch the installation of the autoloader
```bash
composer install
```
### 4. Copy and Paste the files from a previous plugin

### 5. Activate the plugin

## You are done!

