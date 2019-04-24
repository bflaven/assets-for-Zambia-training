<a id="top"></a>
# How to increase the site speed of an existing website? (part 1) <a href="../README.md">&#8592; Home</a>

An article about the keys factors to improve speed of an existing website made with WP.

**All the resources used in that article are available in the directory of the Github account @ [/10_speeding_up_your_websites_increase_site_speed/](../10_speeding_up_your_websites_increase_site_speed/README.md)**


**<a href="#1_speed">1. Speed, Speed... it is all about speed!** &#8595;</a><br>
**<a href="#2_speed">2. How to Check Your WordPress Website Speed?** &#8595;</a><br>
**<a href="#3_speed">3. Enable Gzip compression** &#8595;</a><br>
**<a href="#4_speed">4. Optimize Images** &#8595;</a><br>
**<a href="#5_speed">5. Eliminate Render-blocking JavaScript and CSS** &#8595;</a><br>
**<a href="#6_speed">6. Optimize CSS delivery** &#8595;</a><br>
**<a href="#7_speed">7. Leverage Browser Caching** &#8595;</a><br>
**<a href="#8_speed">8. Reduce server response time** &#8595;</a><br>
**<a href="#9_speed">9. Remove Query Strings from Static Resources with Code** &#8595;</a><br>
**<a href="#10_speed">10. Use a CDN** &#8595;</a><br>
**<a href="#11_speed">11. Optimize Your Database** &#8595;</a><br>
**<a href="#12_speed">12. What else?** &#8595;</a><br>
**<a href="#13_speed">13. Extra infos on site speed optimization** &#8595;</a><br>
**<a href="#14_speed">14. Read more on WP optimization** &#8595;</a><br>




<a id="1_speed"></a>
### 1. Speed, Speed... it is all about speed! <a href="#top">&#8593;</a>

"Bye bye slowness, Hello Speed"... The speed is key, you must kill slowness by any means. Why speed is so important? Because, it is key factor to increases the website usability. The website have to be fast or at least, gives the impression of Speed!

There is a strong correlation between "being fast" with 3 values:
- loading time
- processing time
- perceived website speed, or perceived performance

Fast loading pages improve user experience, increase your pageviews, and help with your WordPress SEO.

<a id="2_speed"></a>
### 2. How to Check Your WordPress Website Speed? <a href="#top">&#8593;</a>

**2.1 Get some result**

First, you must diagnose or try at least to understand why your site is slow before taking any action. This is what will see in that chapter. 2 wise advices before :
- By the way, make a backup of your database and entire website. 
- Do no forget, that your browser is caching elements of your website as you visited often. This makes your website load almost instantly.

**I strongly advise you to use the tool for Google, it is well-documented, you have an extension available for Chrome. To measure the website performance, you can follow the tools.**

- Page Speed from Google: <a href="https://developers.google.com/speed/pagespeed/insights/" target="_blank">https://developers.google.com/speed/pagespeed/insights/</a>

- GT Metrix relies on PageSpeed and Yslow <a href="https://gtmetrix.com/" target="_blank">https://gtmetrix.com/</a>

- Free Website Speed Test Tool <a href=".com/https://www.isitwp.com/free-website-speed-test-tool-for-wordpress/" target="_blank">https://www.isitwp.com/free-website-speed-test-tool-for-wordpress/</a>

2 other possibilities : WebpagetTest, Dareboost

**2.2 One last advise for using such analysis tool.**

This test maybe twisted or distorted because of the server location. Indeed, by default the servers used are American. Thus, if you are hosted in Europe, in Africa or in Asia, the measured load time will be significantly higher than the one of your visitors.

To know the actual loading time of your site, you can use the Chrome Page Load Time extension or specify a European, African or Asian server in the analysis tools. For example, you can choose the server located in Amsterdam for Pingdom Tools, Paris for Dareboost and so on...

Source: https://wp-rocket.me/fr/blog/attention-notes-performance/

Use the Chrome Extension named: Page load time <a href="https://chrome.google.com/webstore/detail/page-load-time/fploionmjgeclbkemipmkogoaohcdbig" target="_blank" rel="noopener">https://chrome.google.com/webstore/detail/page-load-time/fploionmjgeclbkemipmkogoaohcdbig</a>

<a id="3_speed"></a>
### 3. Enable Gzip compression <a href="#top">&#8593;</a>

All modern browsers automatically support and negotiate Gzip compression for all HTTP requests. Enabling Gzip compression can reduce the size of the forwarded response by up to 90%, which can dramatically reduce resource download time, reduce data usage for the client, and improve initial rendering time of your pages.

**3.1 Use a plugin to enable Gzip compression**

The first and one of the easiest is to use a caching extension that supports Gzip activation. For example, WP Rocket automatically adds the Gzip compression rules to your .htaccess file using the mod_deflate module. W3 Total Cache also has a way to activate it for you in its performance section.

**Few plugins that are also cache plugins**

- <a href="https://wp-rocket.me/" target="_blank">https://wp-rocket.me/</a>
- <a href="https://wordpress.org/plugins/w3-total-cache/" target="_blank">https://wordpress.org/plugins/w3-total-cache/</a>
- <a href="https://wordpress.org/plugins/wp-super-cache/" target="_blank">https://wordpress.org/plugins/wp-super-cache/</a>

You can test of the Gzip compression is made correctly with the help of the website.
- <a href="https://www.giftofspeed.com/gzip-test/" target="_blank">https://www.giftofspeed.com/gzip-test/</a>

**3.2 Edit your .htaccess file to enable Gzip compression**

The second way to enable Gzip compression is by editing your .htaccess file.  Most shared hosts use Apache, in which you can simply add the code below to your .htaccess file. You can find your .htaccess file at the root of your WordPress site via FTP.

``` apacheconf
<IfModule mod_deflate.c>
  # Compress HTML, CSS, JavaScript, Text, XML and fonts
  AddOutputFilterByType DEFLATE application/javascript
  AddOutputFilterByType DEFLATE application/rss+xml
  AddOutputFilterByType DEFLATE application/vnd.ms-fontobject
  AddOutputFilterByType DEFLATE application/x-font
  AddOutputFilterByType DEFLATE application/x-font-opentype
  AddOutputFilterByType DEFLATE application/x-font-otf
  AddOutputFilterByType DEFLATE application/x-font-truetype
  AddOutputFilterByType DEFLATE application/x-font-ttf
  AddOutputFilterByType DEFLATE application/x-javascript
  AddOutputFilterByType DEFLATE application/xhtml+xml
  AddOutputFilterByType DEFLATE application/xml
  AddOutputFilterByType DEFLATE font/opentype
  AddOutputFilterByType DEFLATE font/otf
  AddOutputFilterByType DEFLATE font/ttf
  AddOutputFilterByType DEFLATE image/svg+xml
  AddOutputFilterByType DEFLATE image/x-icon
  AddOutputFilterByType DEFLATE text/css
  AddOutputFilterByType DEFLATE text/html
  AddOutputFilterByType DEFLATE text/javascript
  AddOutputFilterByType DEFLATE text/plain
  AddOutputFilterByType DEFLATE text/xml

  # Remove browser bugs (only needed for really old browsers)
  BrowserMatch ^Mozilla/4 gzip-only-text/html
  BrowserMatch ^Mozilla/4\.0[678] no-gzip
  BrowserMatch \bMSIE !no-gzip !gzip-only-text/html
  Header append Vary User-Agent
</IfModule>
```

If your server is running in NGINX, simply add this to your nginx.conf file.

``` apacheconf
36 gzip on;
37 gzip_disable "MSIE [1-6]\.(?!.*SV1)";
38 gzip_vary on;
39 gzip_types text/plain text/css text/javascript application/javascript application/x-javascript;
```
<a id="4_speed"></a>
### 4. Optimize Images <a href="#top">&#8593;</a>
The images represent on average 65% of the total weight of a web page.
You can use Photoshop, Gimp, Affinity...etc to minimize the weight of your images (.png, .jpg...etc)

**My personal choice goes to Photoshop and sometimes I use Imagemagick to script images batches optimization and compression.**

- <a href="https://wordpress.org/plugins/imagify/" target="_blank">Imagify Image Optimiser</a>
- <a href="https://wordpress.org/plugins/optimus/" target="_blank">Optimus Image Optimiser</a>
- <a href="https://wordpress.org/plugins/shortpixel-image-optimiser/" target="_blank">ShortPixel Image Optimiser</a>
- <a href="https://wordpress.org/plugins/wp-smushit/" target="_blank">WP Smush</a>
- <a href="https://wordpress.org/plugins/tiny-compress-images/" target="_blank">TinyPNG</a>

It is best to keep your images as small as possible. Remember, it is best to upload images at scale and not rely on CSS to resize them. This slows down your site. 

**My personal recommendation will that you should perform image resize and optimization as much as possible on your local machine when you work with hight definition image. By experience, I do trust so much a server-side treatment to retrieve images.**

<a id="5_speed"></a>
### 5. Eliminate Render-blocking JavaScript and CSS <a href="#top">&#8593;</a>

One other indication is to eliminate render-blocking JavaScript and CSS. 

The symptom can be basically described as follows some resources block the first visualization of your page (first paint). The lower your First Meaningful Paint score, the faster that the page appears to display its primary content.

To fix this issue, you must focus on running essential JS files / CSS sheets online and postpone the release of any non-essential JS files / CSS sheets.

Source: <a href="https://developers.google.com/web/tools/lighthouse/audits/blocking-resources" target="_blank">https://developers.google.com/web/tools/lighthouse/audits/blocking-resources</a>

When a browser loads a webpage, JavaScript and CSS resources usually prevent the webpage from being displayed until they are downloaded and processed by the browser. Some resources need to be downloaded and processed before displaying anything. However, many CSS and JavaScript resources are conditional–that is, only applied in specific cases–or are simply not needed to render above-the-fold content. To produce the fastest possible experience for your users, you should try to eliminate any render-blocking resources that aren’t required to display above-the-fold content.

As far as Render-blocking Javascript, Google has three recommendations:

**5.1 The first solution**

If you don’t have a lot of JavaScript, you can inline it to get rid of this warning. To inline your JavaScript, you can do it with a plugin like Autoptimize.

- Autoptimize <a href="https://wordpress.org/plugins/autoptimize/
" target="_blank">https://wordpress.org/plugins/autoptimize/
</a>

However, this is really only valid for very small sites. Most WordPress sites have enough JavaScript where this could actually slow you down.

**5.2 The second solution**

It is to load your JavaScript asynchronously.
The `async` attribute essentially downloads the file during HTML parsing and will pause the HTML parser to execute it when it has finished downloading.

**5.3 The third solution**

It is to defer your JavaScript.
The `defer` attribute also downloads the file during HTML parsing, but it only executes it after the parsing has completed. Also, scripts with this attribute execute in order of appearance on the page.

**5.4 We pick.... the second solution**

In our example, we are going to make our JavaScript load asynchronously.
You can use a plugin or make it manual.

**(i) With a plugin**

Essentially the plugin adds the `async` or `defer` attribute to all JavaScript loaded by the WordPress wp_enqueue_script function.

- Async JavaScript: <a href="https://wordpress.org/plugins/async-javascript/
" target="_blank">https://wordpress.org/plugins/async-javascript/
</a>

**(ii) Without a plugin**

**If you don't want to use a plugin for this there are a few other alternatives. Such as adding the following code to your functions.php file.**


``` php
          // If you want to add the Async method
          function add_async_attribute($tag){
           # Add async to all remaining scripts
           return str_replace( ' src', ' async="async" src', $tag );
          }
          add_filter( 'script_loader_tag', 'add_async_attribute', 10, 2);


          // If you want to add the Defer method          
          function add_defer_attribute($tag){
           # Add defer to all remaining scripts
           return str_replace( ' src', ' defer="defer" src', $tag );
          }
          add_filter( 'script_loader_tag', 'add_defer_attribute', 10, 2);
```

``` javascript
// Original Link
<script src="//script1.js?cid=789jhdjhsjfd"></script>
```

``` javascript
// New Link
<script async="async" src="//script1.js?cid=789jhdjhsjfd"></script>
```

**If you want to use the “defer” attribute just replace async=”async” with defer=”defer”.**

For sure, you can also use a plugin named Async JavaScript to to do the job for you. Async JavaScript - <a href="https://wordpress.org/plugins/async-javascript/
" target="_blank">https://wordpress.org/plugins/async-javascript/
</a>

<a id="6_speed"></a>
### 6. Optimize CSS delivery <a href="#top">&#8593;</a>

For such improvement, better use a plugin, you can find a very powerful one named Autoptimize. The plugin helps you with concatenation of your scripts, minification, expires headers, and the ability to move styles to your header and scripts to your footer. Many things recommended by the yahoo performance rules's list.


**Using Autoptimize, will let you minify JavaScript, HTML and CSS. It is areal swiss army knife for Minification that can ve called also file optimization. Minification literally means stripping out unneeded parts of HTML, CSS and JS (JavaScript) files to make them more compact.**

Autoptimize - <a href="https://wordpress.org/plugins/autoptimize/" target="_blank">https://wordpress.org/plugins/autoptimize/</a>


<a id="7_speed"></a>
### 7. Leverage Browser Caching <a href="#top">&#8593;</a>

If the server that host your WP is on Apache then you can add the following directives.

**Adding Cache-Control Headers in Apache**

You can add Cache-Control headers in Apache by adding the following to your .htaccess file. Snippets of code can be added at the top or bottom of the file (before # BEGIN WordPress or after # END WordPress).


``` apacheconf
<filesMatch ".(ico|pdf|flv|jpg|jpeg|png|gif|svg|js|css|swf)$">
Header set Cache-Control "max-age=84600, public"
</filesMatch>
```


**Adding Expires Headers in Apache**

You can add Expires headers in Apache by adding the following to your .htaccess file.

``` apacheconf
## EXPIRES HEADER CACHING ##
<IfModule mod_expires.c>
ExpiresActive On
ExpiresByType image/jpg "access 1 year"
ExpiresByType image/jpeg "access 1 year"
ExpiresByType image/gif "access 1 year"
ExpiresByType image/png "access 1 year"
ExpiresByType image/svg "access 1 year"
ExpiresByType text/css "access 1 month"
ExpiresByType application/pdf "access 1 month"
ExpiresByType application/javascript "access 1 month"
ExpiresByType application/x-javascript "access 1 month"
ExpiresByType application/x-shockwave-flash "access 1 month"
ExpiresByType image/x-icon "access 1 year"
ExpiresDefault "access 2 days"
</IfModule>
## EXPIRES HEADER CACHING ##
```

Source: https://kinsta.com/blog/leverage-browser-caching/


If your WP is on Nginx, you can do the same by adding the following.


**Adding Cache-Control Header in Nginx**

``` apacheconf

location ~* \.(js|css|png|jpg|jpeg|gif|svg|ico)$ {
 expires 30d;
 add_header Cache-Control "public, no-transform";
}

```


**Adding Expires Headers in Nginx**

``` apacheconf
location ~*  \.(jpg|jpeg|gif|png|svg)$ {
        expires 365d;
    }

    location ~*  \.(pdf|css|html|js|swf)$ {
        expires 2d;
    }
```


Do not forget to load the script at the bottom en especially the one from Google analytics of you are using this tracking system.

There is plenty of plugin that manage such as CAOS | Host Google Analytics Locally - <a href="https://wordpress.org/plugins/host-analyticsjs-local/" target="_blank">https://wordpress.org/plugins/host-analyticsjs-local/</a>

<a id="8_speed"></a>
### 8. Reduce server response time <a href="#top">&#8593;</a>

To accelerate the server response, you can make a work around on reducing server response time warning. If your server is slow because you are for instance on a shared hosting. So to fix this we need to implement some type of caching to speed things up. You can for instance use a free Cache Enabler plugin named Cache Enabler – WordPress Cache <a href="https://wordpress.org/plugins/cache-enabler/" target="_blank">https://wordpress.org/plugins/cache-enabler/</a>.

<a id="9_speed"></a>
### 9. Remove Query Strings from Static Resources with Code <a href="#top">&#8593;</a>
You can easily remove query strings from your assets with a few lines of code. Simply add the following to your WordPress theme’s functions.php file.

``` php
function remove_query_strings() {
   if(!is_admin()) {
       add_filter('script_loader_src', 'remove_query_strings_split', 15);
       add_filter('style_loader_src', 'remove_query_strings_split', 15);
   }
}

function remove_query_strings_split($src){
   $output = preg_split("/(&ver|\?ver)/", $src);
   return $output[0];
}
add_action('init', 'remove_query_strings');
```

or you can use the plugin from perfmatters.io: <a href="https://perfmatters.io/" target="_blank">https://perfmatters.io/</a>

<a id="10_speed"></a>
### 10. Use a CDN <a href="#top">&#8593;</a>
If you want to use a CDN, you must rely on some external offers that can be expensive or free! If you take the simple definition of Content Delivery Network: it is It is a bunch of servers, located across the globe, that delivers your website’s static files (images, PDFs, static libraries such as JavaScript and CSS files) in the fastest time.
Services like CloudFlare, Incapsula or even Photon by Jetpack can present a real solution. 

I invite to grab some elements form these 2 articles:
- <a href="https://www.wpexplorer.com/free-cdn-services-for-wordpress/" target="_blank">https://www.wpexplorer.com/free-cdn-services-for-wordpress/</a>
- <a href="https://www.collectiveray.com/wp/tips/free-cdn-wordpress
" target="_blank">https://www.collectiveray.com/wp/tips/free-cdn-wordpress</a>

<a id="11_speed"></a>
### 11. Optimize Your Database <a href="#top">&#8593;</a>
WordPress like any CMS relies heavily on its database, at the beginning this databases has 12 tables. Each action performed in WordPress is connected directly or indirectly with its database. From themes to plugins and comments to posts everything uses a database to perform its desired functionality.

Considering that you have a WP installation with all the tables are prefixed by `wp_` and full access to `phpMyAdmin`, we will see what can done to optimize the MySQL database of your WP. 


**11.1 Some optimization queries for `wp-config.php`**

Some operations that can be conducted by WP itself if you declare them into the wp-config.php file: use the optimization tool, limit the number of post revisions or disable it... etc

``` php
// To use the optimization tool, you first need to add this line to your website wp-config.php file.
define( 'WP_ALLOW_REPAIR', true );

// To reduce the number of revisions that are saved, simply add the following code to your wp-config.php file.
define( 'WP_POST_REVISIONS', 2 );

// Post revisions can be completely disabled by adding the following code to your wp-config.php file
define( 'WP_POST_REVISIONS', false );
```

**11.2 Some optimization queries for `phpMyAdmin`**

``` sql
-- to optimize the WP main table wp_posts
OPTIMIZE TABLE 'wp_posts'
```

Some MySQL commands available in `phpMyAdmin`
``` sql

--- analyze_tbl
ANALYZE TABLE `wp_commentmeta`, `wp_comments`, `wp_links`, `wp_options`, `wp_postmeta`, `wp_posts`, `wp_termmeta`, `wp_terms`, `wp_term_relationships`, `wp_term_taxonomy`, `wp_usermeta`, `wp_users`

--- check_tbl
CHECK TABLE `wp_commentmeta`, `wp_comments`, `wp_links`, `wp_options`, `wp_postmeta`, `wp_posts`, `wp_termmeta`, `wp_terms`, `wp_term_relationships`, `wp_term_taxonomy`, `wp_usermeta`, `wp_users`

--- checksum_tbl
CHECKSUM TABLE `wp_commentmeta`, `wp_comments`, `wp_links`, `wp_options`, `wp_postmeta`, `wp_posts`, `wp_termmeta`, `wp_terms`, `wp_term_relationships`, `wp_term_taxonomy`, `wp_usermeta`, `wp_users`

--- optimize_tbl
OPTIMIZE TABLE `wp_commentmeta`, `wp_comments`, `wp_links`, `wp_options`, `wp_postmeta`, `wp_posts`, `wp_termmeta`, `wp_terms`, `wp_term_relationships`, `wp_term_taxonomy`, `wp_usermeta`, `wp_users`

--- repair_tbl
REPAIR TABLE `wp_commentmeta`, `wp_comments`, `wp_links`, `wp_options`, `wp_postmeta`, `wp_posts`, `wp_termmeta`, `wp_terms`, `wp_term_relationships`, `wp_term_taxonomy`, `wp_usermeta`, `wp_users`
```

**11.3 Control the revisions**

Cleaning the database of all the post revisions. Apparently, this operation improve tremendously the health of your database that has probably inflated due to the number of revisions e.g. "my database was reduced by 59 per cent, no kidding!"

``` php
// Autosave is great feature. Did you ever loose one week of work? :( I did so for the sake of your mind, keep the autosave alive, it will not use up much room in your database.
// But you can manage the interval of this autosave operation
define( 'AUTOSAVE_INTERVAL', 160 ); // Seconds
```



**11.4 MySQL command to delete spam**

You can also clean Spam Comments. If your website receives a lot of spam, you may find that spam comments are taking up a lot of space in your database. Akismet will do the job.

Akismet Anti-Spam - <a href="https://fr.wordpress.org/plugins/akismet/" target="_blank">https://fr.wordpress.org/plugins/akismet/</a>


``` sql
--- Spam comments can also be deleted using the following SQL command.
DELETE FROM wp_comments WHERE comment_approved = 'spam'


--- All comments awaiting approval can be deleted by using the following SQL command.
DELETE FROM wp_comments WHERE comment_approved = '0'
```


``` php
// The number of days before trash is emptied can be changed by adding the following code to your wp-config.php file.
define( 'EMPTY_TRASH_DAYS', 5 ); // 5 days

// The trash system can be completey disabled by adding the following line of code to your wp-config.php file.
define( 'EMPTY_TRASH_DAYS', 0 ); // Zero days
```

**11.5 Delete WordPress Transient**

Transient records are stored in the WordPress options table. WordPress Transients offers a simple and standardized way of storing cached data in the database temporarily by giving it a custom name and a timeframe after which it will expire and be deleted.

Use a plugin like Transient Cleaner <a href="https://wordpress.org/plugins/artiss-transient-cleaner/" target="_blank">https://wordpress.org/plugins/artiss-transient-cleaner/</a> remains the simplest solution.


**11.6 More information about MySQL optimization for WP**

- WordPress Database Optimization: Tools and Techniques to Improve Performance // <a href="https://www.cloudways.com/blog/wordpress-database-optimization-guide/" target="_blank">https://www.cloudways.com/blog/wordpress-database-optimization-guide/</a>

- Exclusive MySQL Performance Tuning Tips For Better Database Optimization // <a href="https://www.cloudways.com/blog/mysql-performance-tuning/" target="_blank">https://www.cloudways.com/blog/mysql-performance-tuning/</a>

<a id="12_speed"></a>
### 12. What else? <a href="#top">&#8593;</a>

Unordered list of tools to diagnose, audit and optimize your WP database by performing most of the actions above: operate your WP database and maintain tables in good shape.

- WP-DBManager <a href="https://wordpress.org/plugins/wp-dbmanager/" target="_blank">https://wordpress.org/plugins/wp-dbmanager/</a>

- Optimize Database after Deleting Revisions // <a href="https://wordpress.org/plugins/rvg-optimize-database/" target="_blank">https://wordpress.org/plugins/rvg-optimize-database/</a>

- WP-Optimize // <a href="https://wordpress.org/plugins/wp-optimize/" target="_blank">https://wordpress.org/plugins/wp-optimize/</a>

- Cleanup your database with WP-Sweep <a href="https://fr.wordpress.org/plugins/wp-sweep/" target="_blank">https://fr.wordpress.org/plugins/wp-sweep/</a>

**12.1 Few plugins to go further**

Clearfy all-in-one: A good plugin that concentrate a lot of good practices for you and that is very educational with its explanations for each action that you may perform.
Clearfy – WordPress optimization plugin and disable ultimate tweaker
https://wordpress.org/plugins/clearfy/#description

Some plugins allows you to complete your WordPress performance tuning inside of WordPress while you run this type of diagnostic test.

- Query Monitor // <a href="https://wordpress.org/plugins/query-monitor/" target="_blank">https://wordpress.org/plugins/query-monitor/</a>
- P3 (Plugin Performance Profiler) // <a href="https://pe.wordpress.org/plugins/p3-profiler/" target="_blank">https://pe.wordpress.org/plugins/p3-profiler/</a>

**12.2 One short word on New Relic**

There a great tool named New Relic but it is often bundle with your hosting system. For instance, in Pantheon, you got it when you subscribe to their services for free.

- New Relic Reporting for WordPress // <a href="https://wordpress.org/plugins/wp-newrelic/" target="_blank">https://wordpress.org/plugins/wp-newrelic/</a>

- How to Find WordPress Performance Bottlenecks with New Relic // <a href="https://kinsta.com/blog/wordpress-performance-new-relic/" target="_blank">https://kinsta.com/blog/wordpress-performance-new-relic/</a>

- How to Use New Relic With PHP & WordPress // <a href="https://code.tutsplus.com/tutorials/how-to-use-new-relic-with-php-wordpress--cms-20465" target="_blank">https://code.tutsplus.com/tutorials/how-to-use-new-relic-with-php-wordpress--cms-20465</a>

- New Relic APM Pro in Pantheon // <a href="https://pantheon.io/docs/new-relic/" target="_blank">https://pantheon.io/docs/new-relic/</a>

- Pantheon + New Relic // <a href="https://pantheon.io/features/new-relic" target="_blank">https://pantheon.io/features/new-relic</a>

<a id="13_speed"></a>
## 13. Extra infos on site speed optimization <a href="#top">&#8593;</a>

Different well-known sources for speeding up website, especially the very detailed and popular list from yahoo and one from one of the best hosting solution provider of the moment:  pantheon.io.


**13.1 Speed tips from yahoo.com**

1. Make Fewer HTTP Requests
2. Use a Content Delivery Network (CDN)
3. Add Expires or Cache-Control Header
4. Gzip Components
5. Put Stylesheets at Top
6. Put Scripts at Bottom
7. Avoid CSS Expressions
8. Make JavaScript and CSS External
9. Reduce DNS Lookups
10. Minify JavaScript and CSS
11. Avoid Redirects
12. Remove Duplicate Scripts
13. Configure ETags
14. Make Ajax Cacheable
15. Flush Buffer Early
16. Use GET for Ajax Requests
17. Postload Components
18. Preload Components
19. Reduce the Number of DOM Elements
20. Split Components Across Domains
21. Minimize Number of iframes
22. Avoid 404s
23. Reduce Cookie Size
24. Use Cookie-Free Domains for Components
25. Minimize DOM Access
26. Develop Smart Event Handlers
27. Choose <link> Over @import
28. Avoid Filters
29. Optimize Images
30. Optimize CSS Sprites
31. Do Not Scale Images in HTML
32. Make favicon.ico Small and Cacheable
33. Keep Components Under 25 KB
34. Pack Components Into a Multipart Document
35. Avoid Empty Image src

Source: <a href="https://developer.yahoo.com/performance/rules.html" target="_blank">https://developer.yahoo.com/performance/rules.html</a>

**13.1 Speed tips from pantheon.io for WP**

Here’s how to turn your site into a Formula One champion.

**Updated PHP with Opcode Cache**<br>
Using an outdated version of PHP is like using a flip phone instead of a smartphone - it works, but it’s nowhere near as capable. PHP 7 is between 20 and 100% faster than 5.2. Keep your PHP up-to-date and use the built-in Opcache to reduce CPU load.

**Persistent Object Cache**<br>
Reduce the load on your database and CPU overhead with either Redis (included in Pantheon accounts) or Memcached.

**Reverse Proxy Page Cache**<br>
WordPress can serve cached pages, but other subsystems can do it up to 200x faster. A reverse proxy like Varnish not only helps with performance, but also can help your site be more stable during a traffic spike.

**Solid State Drives (SSD)**<br>
This is the lone hardware suggestion on our list, but it’s well worth considering. With spinning-disc drives, there’s a physical limit to how fast data can be retrieved. It makes a notable difference in performance--that’s why Pantheon exclusively employs solid state drives.

**The InnoDB Engine**<br>
Make sure your database can keep up with the SSD speed by using the InnoDB Storage Engine to avoid table-level locking. InnoDB also helps preserve your data if you have a crash.

**Dedicated Search Index**<br>
Search is another function that WordPress can do, but not as well as an external solution. A dedicated index is more responsive and has extra features that WordPress’ default doesn’t have. We recommend ApacheSolr (bundled with Pantheon), but ElasticSearch is another solid option.

**Optimize Image Sizes**<br>
Creating compressed thumbnails of .jpg files before you upload. For images with just a few colors, consider .png instead of .jpg for smaller file sizes. Use vector-based .svg files whenever possible, too—as text files they are often smaller than their binary counterparts.

**Update to the Latest Version of WordPress**<br>
The most recent version of WordPress is fully supported, secure, and optimized for best performance. Make sure you stay on top of core updates, either through automated updates or a custom WordPress update workflow.

**Paginate Comments**<br>
Go to Settings >> Discussions in your admin panel, select “Break comments into pages,” and select how many comments to display per page.

**Display summaries instead of full text**<br>
If your blog’s front page takes forever to load, switch to a summary/”read more” format to make it load faster, and be easier for your readers to navigate.

**Optimize Your Database**<br>
Use WordPress’ built-in optimizer for regular maintenance, and a plugin like WP-Sweep for a deep clean.  

**Remove Unused Plugins, Themes, & Media**<br>
Take no prisoners when you audit your files and data. Plugins that duplicate functionality, themes you never used, the midi file of your corporate anthem--ditch them all.

**Delete Post Revisions & Spam Comments**<br>
Old post revisions can double the size of your database, and spam comments don’t do anything but take up space.

**Optimize Queries**<br>
Identify slow-running MySQL queries and replace them. Here’s a quick guide to using New Relic (included with every Pantheon account) to get started.

Source: <a href="https://pantheon.io/resources/quickstart-guide-fast-wordpress" target="_blank">https://pantheon.io/resources/quickstart-guide-fast-wordpress</a>

<a id="14_speed"></a>
## 14. Read more on WP optimization <a href="#top">&#8593;</a>

- The Ultimate Guide to Boost WordPress Speed & Performance<br><a href="https://www.wpbeginner.com/wordpress-performance-speed/" target="_blank">https://www.wpbeginner.com/wordpress-performance-speed/</a>


- WordPress Performance Tuning: 13 Key Steps (Plus MySQL Optimization)<br><a href="https://wpbuffs.com/wordpress-mysql-performance-tuning/" target="_blank">https://wpbuffs.com/wordpress-mysql-performance-tuning/</a>


- WP Buffs WordPress Security Blog<br><a href="https://wpbuffs.com/security-blog/" target="_blank">https://wpbuffs.com/security-blog/</a>


- Caching a Website: The 110% Guide to Server and Browser Cache (2019)<br><a href="https://wpbuffs.com/website-caching/" target="_blank">https://wpbuffs.com/website-caching/</a>


- Best Practices for Speeding Up Your Web Site - Yahoo Developer Network<br><a href="https://developer.yahoo.com/performance/rules.html" target="_blank">https://developer.yahoo.com/performance/rules.html</a>


- A Beginner’s Guide to Website Speed Optimization<br><a href="https://kinsta.com/learn/page-speed/" target="_blank">https://kinsta.com/learn/page-speed/</a>


- The Quickstart Guide to Fast WordPress<br><a href="https://pantheon.io/resources/quickstart-guide-fast-wordpress" target="_blank">https://pantheon.io/resources/quickstart-guide-fast-wordpress</a>


- Comment obtenir un score de 100/100 dans Google PageSpeed Insights avec WordPress (french)<br><a href="https://kinsta.com/fr/blog/google-pagespeed-insights/
" target="_blank">https://kinsta.com/fr/blog/google-pagespeed-insights/</a>


- Google PageSpeed Insights: Scoring 100/100 with WordPress (Possible?)<br><a href="https://kinsta.com/blog/google-pagespeed-insights/" target="_blank">https://kinsta.com/blog/google-pagespeed-insights/</a>


- How to Optimize Images for Web and Performance<br><a href="https://kinsta.com/blog/optimize-images-for-web/" target="_blank">https://kinsta.com/blog/optimize-images-for-web/</a>


- Content Marketing Essentials for 2019<br><a href="https://kinsta.com/learn/content-marketing/" target="_blank">https://kinsta.com/learn/content-marketing/</a>


- A Beginner's Guide to Perceived Performance: 4 Ways to Make Your Mobile Site Feel Like a Native App<br><a href="http://dev.mobify.com/blog/beginners-guide-to-perceived-performance/" target="_blank">http://dev.mobify.com/blog/beginners-guide-to-perceived-performance/</a>


- How to Eliminate Render-Blocking JavaScript and CSS<br><a href="https://kinsta.com/blog/eliminate-render-blocking-javascript-css/" target="_blank">https://kinsta.com/blog/eliminate-render-blocking-javascript-css/</a>


- async vs defer attributes<br><a href="https://www.growingwiththeweb.com/2014/02/async-vs-defer-attributes.html" target="_blank">https://www.growingwiththeweb.com/2014/02/async-vs-defer-attributes.html</a>


- A Beginner’s Guide to Website Speed<br><a href="https://kinsta.com/learn/page-speed" target="_blank">https://kinsta.com/learn/page-speed</a>


- The quick guide to speeding up your websites<br><a href="https://www.webdesignerdepot.com/2015/07/the-quick-guide-to-speeding-up-your-websites/" target="_blank">https://www.webdesignerdepot.com/2015/07/the-quick-guide-to-speeding-up-your-websites/</a>


- The Front-End Performance Checklist speeds up your web developments<br><a href="https://codeburst.io/the-front-end-performance-checklist-speeds-up-your-web-developments-b68e1c7a0276" target="_blank">https://codeburst.io/the-front-end-performance-checklist-speeds-up-your-web-developments-b68e1c7a0276</a>


-   Front-End Performance Checklist<br><a href="https://github.com/thedaviddias/Front-End-Performance-Checklist" target="_blank">https://github.com/thedaviddias/Front-End-Performance-Checklist</a>


- How to Speed up Your WordPress Site (Ultimate 2019 Guide)<br><a href="https://kinsta.com/learn/speed-up-wordpress/" target="_blank">https://kinsta.com/learn/speed-up-wordpress/</a>


