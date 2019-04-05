<a id="top"></a>
# Best practices in WP plugin development!


I have made from time to time and for years plugin without asking me what were the good practices in terms of development. I started to apply basically what was advised in the one of the best book ever written about WordPress. This book is still among the best relevant book on WordPress.


**Why should I apply these best practises?**<br>
Here is a quick reminder about the best practises to write a plugin. To the question: Why should I apply these guidelines to the WP plugin development as I made plugins for years and got a quick and sufficient result with no big efforts. 

Well, soon you will get a fly in the ointment. Why? Because, extending WordPress features can create a huge and cumbersome technical debt with deprecated code from plugins. At a certain point, You can not make trade-offs with the very existence of your WordPress.


**Browsing OOP concepts: Class, Object, Method**<br>
There is a lot of resources about WP plugin development, quite a lot about OOP (Object Oriented Programming), Class, Object, Method.

**My purpose is to browse quickly the OOP concepts in order to apply them in the WP plugin development process.**




## Quick introduction to Object-Oriented Programming and WordPress Plugins (OOP)

The main advantages of using a Class are: maintenance, readability and above all to avoid conflicts with other plugins. One of the biggest limitations of procedural programming (the opposite of OOP — not using classes) is how difficult it is to share variables between functions. This leads to using global variables, which is an overkill.

Let write a simple Class and detail the way it works.

``` php
/**
 * Class example
 * 
 */

// We create a class named "MetaCountry"
class MetaCountry
{


  private $_name;
  private $_currency;
  private $_flag;
  private $_capital;
  private $_subregion;
  private $_nativeLanguage;
  private $_area;

  public $welcome_msg = "Welcome";
        
  // We declare a method for the sole purpose to display a text.
  public function DefineCountry() {
    echo ('I am a country!');
    echo ('<br>');
  }

  public function WelcomeEnglish(){
        return $this->welcome_msg;
    }
 
  public function WelcomeFrench(){
        $welcome_msg = 'Bienvenue';
        return $welcome_msg;
    }

}//EOC

//Instantiate the Class in an object named $country
$country = new MetaCountry;

// Look for the object $country and invokes the method Define() on this object
$country->DefineCountry();



// echo $country->welcome_msg;
// You can apply method to this object like we did previously
// echo $country->WelcomeEnglish();
// echo $country->WelcomeFrench();

```


Let's have quick observation round of the vocabulary used in OOP. Let’s talk about syntax and terminology. The 3 main words are "class", "object" and "instance". In any program, you can only have a class of a given name once. For instance, if you create a class in a WordPress plugin called "WP_Query", you will get a fatal error, since that class is already defined.

**In OOP, the functions inside a class are called methods e.g. `DefineCountry ()`, `WelcomeEnglish()`, `WelcomeFrench() ` are functions but are called methods of the MetaCountry's Class**

**To use a class, we must first instantiate the class and place it in a variable by setting a variable equal to a new instance of the class e.g. `$country = new MetaCountry;`.**


Inside of a class, the current instance is held in a special variable called `$this`. That's why we had to use `$this` to access the property. Just like functions outside of classes, methods define their own scope. That is why we can have a variable, with the same name as a class property: `echo $country->welcome_msg;`

In this class, we have a property called "welcome_msg". It looks like a variable and acts like a variable but can only be accessed in the context of the class.

Methods are also accessed using the special property `$this`.

**Keep in mind to never have a method with the same name as a class.**

### How does does it work in WP?<br>
In short, the frontend of WordPress creates a WP_Query object based on the current URL and places it in the global variable $wp_query. As a result, we could rewrite that loop like this:


``` php
      global $wp_query;
      if ( $wp_query->have_posts() ) {
            while ( $wp_query->have_posts() ) {
            $wp_query->the_post();
            echo apply_filters( ‘the_content’,
            $wp_query->post->post_content );
        }
      }
```


This makes it clear that we are iterating through the posts — to be more specific, the objects of the WP_Post class is stored in the posts property of the WP_Query instance, which is stored in the global variable `$wp_query`.


We can pass our array of arguments into the object when we instantiate. For example, to tell `WP_Query` to get 10 posts of the `znbc-tada` post type, we could do this:

``` php
      $args = [
      'post_type' => 'znbc-tada',
      'posts_per_page' => 10
      ];
      $query = new WP_Query( $args );
```
**For someone who ignore almost everything about OOP, WordPress is a good start. It is a good gateway to object-oriented programming**

WordPress is far from being an object-oriented application, but there are classes for all the content types. Classes that can be used for finding and iterating through content's collections. The classes list is as the following:

- posts using `WP_Query`. 
- users using `WP_User_query`.
- taxonomy terms using `WP_Tax_Query`.
- comments using `WP_Comment_Query`.


You can read through each of these classes to understand how they work, what properties they have, and what methods you can use from them. Understanding these basic query APIs will help you out as a WordPress developer. It will also help you learn how classes are designed.


- The documentation about `WP_Query` <a href="https://codex.wordpress.org/Class_Reference/WP_Query" target="_blank">https://codex.wordpress.org/Class_Reference/WP_Query</a>

- The documentation about `WP_User_query`<a href="https://codex.wordpress.org/Class_Reference/WP_User_Query" target="_blank">https://codex.wordpress.org/Class_Reference/WP_User_Query</a>

- The documentation about `WP_Tax_Query` <a href="https://developer.wordpress.org/reference/classes/wp_tax_query/" target="_blank">https://developer.wordpress.org/reference/classes/wp_tax_query/</a>

- The documentation about `WP_Comment_Query` <a href="https://codex.wordpress.org/Class_Reference/WP_Comment_Query
" target="_blank">https://codex.wordpress.org/Class_Reference/WP_Comment_Query</a>

### Want more? Quick explanations on other OOP concepts

**As I say now, this is not academical lesson on OPP, this more a 10 minutes reading handy tips guide to let you to understand the logic of any plugin using class in WP and especially the ones that given an as example in this post.**

Let introduce very briefly few other concepts for OPP.

**Encapsulation & Scope**<br>
In software design, think of encapsulation as the principle by which code and data are bundled together in a way that restricts their access to the rest of the programming.

OOP gives the ability to control access to variables of a class, which we refer to as properties. This is one of the major advantages of OOP — we have three levels of "visibility" for both properties and methods of a class.


**Classes VS Objects**<br>
Classes define a set of rules for objects they create. Objects are created by instantiating a class, which determines what the object can do.


**3 concepts of visibility : public, protected, and private**<br>
In OOP PHP, we have three visibility levels for properties and methods of a class: public, protected, and private, all of which can be declared using a keyword.

- `public`: The first level is "public". This level has no restrictions, which means it can be called in any scope.

- `protected`:  The second level is "protected". Protected properties and methods can be accessed from inside the class they are declared, or in any class that extends them. They can't be accessed from outside the class or subclass.

- `private`: While protected properties and methods are accessible anywhere in the object, the third level "private" is more restrictive. If you have a class with a protected property and a private property and then extend that class in the subclass, you can access the protected property, but not the private property.

The same properties also applies to methods (name of fucntion inside a Class).

- A public method of a class can be called outside of the class or in a subclass.

- A protected method can’t be called outside of a class, but can be called in a subclass.

- A private method of a class can only be called inside of the class it is declared in.

In PHP you set properties and methods to be public or private simply by writing public or private before them. You should always specify these elements for clear code, but the default if you don’t specify them is that everything is public.


**Class Inheritance**<br>
Unless a class is declared as final it can still be extended. PHP provides an abstract convention for classes that can not be instantiated directly and acts only to provide base classes for other classes that extend them.

**Abstract Classes**<br>
The other special rule of an abstract class is that they can have abstract methods, which must be overridden by the class that extends them or an error will occur. This is a really useful system because it lets you define how the subclasses will function.

**A word on `__construct()` method**<br>
A quick word on this method that you may often encounter in a PHP Class. `__construct()` runs when the class is instantiated. This means that if you want a class to run its methods in a specific order and pass data between them based on the results of those methods, you can set that up inside `__construct()`.

> All this part was strongly inspired by articles published in Torque | @thetorquemag<br><a href="https://torquemag.io/" target="_blank">https://torquemag.io/</a>. You can check the links in the read more section below

## Using Namespaces in WP plugin development

Let starts to define by usage, WordPress is quite old CMS, meanwhile PHP has known very powerful evolutions. As we say before that is a nice gateway to OOP but to get stick with up-to-date practices, you must include also the usage of  Namespaces like in PHP frameworks such as Laravel or Symfony.

**The sneaking goal to use Namespaces in WP is to get as closer as possible to an MVC (Model-View-Controller) logic for maintenance and clarity.**

And at the same time, melting or enhancing WP's advantages with some MCV's obvious advantages like: Faster development process, Ability to provide multiple views, Support for asynchronous technique, Modification does not affect the entire model, MVC model returns the data without formatting, SEO friendly Development platform.

For information, PHP's namespace were available in PHP since the version 5.3.0 or greater. 

**Think about Namespaces as cornerstone for plugin architecture. Your plugin may bloated with cumbersome code.**

The Namespaces benefits can be reduced to two elements:
1. First, shortening names of our classes and functions.
2. Second, giving a logical separation to the code with the help of separated Classes.

**All the projects available for this post include Namespaces, that's a must-have.**



## Using composer in WP plugin development
The main idea is to launch the install of WP with the help of composer to be more precise is to use a Class Autoloader.
As composer is here to help manage PHP dependencies, the tool will be a "crutch" to develop, share, make use of, host, and deploy.

Assuming you've installed composer, you can now run composer install from the command line.

``` bash
$ composer install
```

Source: Your Guide to Composer in WordPress <a href="https://composer.rarst.net/" target="_blank">https://composer.rarst.net/</a>

**For information, we use composer in the most advanced plugin of this series named `5_ZNBC_plugin_oop`**



## Use a boilerplate code in WP plugin development
If you're the kind to cut across fields to get to the top of a mountain faster :) Then, this one is for you. It is a smart solution, using an existing code, integrating best practises for a WP plugin. That is the purpose of this website : 

- WordPress Plugin Boilerplate Generator <a href="https://wppb.me/" target="_blank">https://wppb.me/</a>

The Boilerplate can be installed directly into your plugins folder "as-is". You will want to rename it and the classes inside of it to fit your needs. For example, if your plugin is named 'example_me' be sure to change the following elements:

* rename files from `plugin_name` to `example_me`
* change `plugin_name` to `example_me`
* change `PLUGIN_NAME_` to `EXAMPLE_ME_`

Then, it's safe to activate the plugin at this point. Because the Boilerplate has no real functionality there will be no menu items, meta boxes, or custom post types added until you write the code.

## What if you want to make bigger evolution into WP, touching for instance the database.<br>
One last thing, sooner or later, you will be enough bold to develop big plugins. Remember WP was designed to manage blog. Nevertheless, with the introduction of post_type, WP capabilities has been extended but still for text content. So, for very specific features and content, you may have to create custom database tables. For instance, let say you will use WP as an eStore and you want your own plugin. That is a deeper change! No doubt.

**Remember to always challenge your decision before launching such a development with hiring a good developer or leverage on a en existing plugin. Typically if you intend to sell things with, think of  WooCommerce. A free eCommerce plugin that allows you to sell anything. More on <a href="https://woocommerce.com/" target="_blank">https://woocommerce.com/</a>**

Anyway, if you intend to sell stuff, you will have to think about a specific data model because the idea is to store an order record. Imagine, the model contains 20 fields.

``` bash
#Some of the 20 fields defining an order record for your future shop in WP
Total, Taxes, Discounts, Billing Address Line 1, Billing Address Line 2, Billing City... to be continued
```

**Without explaining the all development process, I just want to stress the main reasons will be forced to design new tables.**


**1. Efficiency**
Storing data like this in wp_posts/wp_postmeta is counterproductive. The WP database tables are tailored specifically to store text not eCommerce order data.

**2. Inefficiency**
Compute figures in WP is horribly inefficient. Storing data that needs to support calculation queries is horribly inefficient. 


**3. Private data**
Inherently, the wp_posts and wp_postmeta tables are designed for public data. WordPress was built as a blogging platform so the data stored in its tables is typically non-sensitive publicly-safe data. There are certain areas of the WordPress database designed to hold sensitive data, but generally the posts and postmeta table are not suited for this kind of data.

**I do not only talk about security concerns but also think about privacy concern due to GRDP for instance if you operate services in Europe.**

**4. Control**
When building within an existing schema, you are limited to where and how you store data. By utilizing custom tables and your own API for accessing the data, you have complete freedom to store and access data how you wish.

**Think and design your data model before you intend to start develop a "big" plugin. Let's say as a News website in WP, you want to privatize part of your content based on subscription.**

- Building a Database Abstraction Layer <a href="https://pippinsplugins.com/series/building-a-database-abstraction-layer/" target="_blank">https://pippinsplugins.com/series/building-a-database-abstraction-layer/</a>

- Advanced tutorials from pippinsplugins <a href="https://pippinsplugins.com/category/tutorials/advanced-tutorials/" target="_blank">https://pippinsplugins.com/category/tutorials/advanced-tutorials/</a>


**Conclusion**<br>
Be sure to apply these best practices because you may spend lonely days and nights debugging your work if not. Yes, you can get familiar with WP plugin development with playing around on your local machine as a sandbox. This is the main reason of the extraordinary success of WordPress but also the incredible crap that you can find as plugins, anyone can do a plugin! But, if your intention is to try exploit, share, maintain or even sale your code, you'd better raise your standards. 


> Last not least, one the best explanation ever found on development and on WP in general. Check out what has been written by 10up on Performance and Design Patterns. Performance by 10up <a href="https://10up.github.io/Engineering-Best-Practices/php/#top" target="_blank">https://10up.github.io/Engineering-Best-Practices/php/#top</a> and Design Patterns by 10up <a href="https://10up.github.io/Engineering-Best-Practices/php/#design-patterns" target="_blank">https://10up.github.io/Engineering-Best-Practices/php/#design-patterns </a>


## Let's dive into our WP plugins examples
Conceptual time is over, let's practise.

**Here is 6 plugins to apply some of the principals described above and help you out making your way into WP plugin development. These plugins are just examples for educational purposes to see how some of principles expressed above can be apply.**


1. `0_ZNBC_plugin_oop`
2. `1_ZNBC_plugin_oop` 
3. `2_ZNBC_plugin_oop` 
4. `3_ZNBC_plugin_oop` 
5. `4_ZNBC_plugin_oop` 
6. `5_ZNBC_plugin_oop`

**Anatomy of the `5_ZNBC_plugin_oop` wp plugin**



**The structure of `5_ZNBC_plugin_oop`**
Maybe the last plugin require some explanations. The purpose is to create a post_type named `znbc-tada` that will be the key element for todolist.

> This plugin was strongly inspired by the WP-Todolist available at <a href="https://github.com/Gmulti/WP-Todolist" target="_blank">https://github.com/Gmulti/WP-Todolist</a>


``` bash
ZnbcTadalist/
│── Models/
    ├── HooksAdminInterface.php
    ├── HooksFrontInterface.php
    ├── HooksInterface.php
│── WordPress/
    │── Helpers/
        ├── PostType.php
    │── PostType/
        ├── Tada.php
    │── Taxonomy/
        ├── State.php
vendor/
  │── composer/
      ├── ...
  ├── autoload.php
6_ZNBC_plugin_oop.php
```

**0. Things to remember**
- Name of the custom post_type: `znbc-tada`
- Name of the custom taxonomy: `znbc-state`
- Namespace: `ZnbcTadalist`
- Constant for the custom post_type: `CPT_ZNBCTADA`


**1. Go to directory where you have install you WP.**
It can a WOP installed with Docker or a sandbox made with MAMP.

``` bash
$ cd /path-to-your-wp-install/
```

**2. Create your tree directory directory `5_ZNBC_plugin_oop` in `wp-content/plugins/5_ZNBC_plugin_oop`**

<!-- 

cd /Users/brunoflaven/Documents/02_copy/_technical_training_zambia_znbc/000_release_version/5_zambia_plugins/

mkdir 7_ZNBC_plugin_oop
cd 7_ZNBC_plugin_oop

#Create the plugin file
touch 7_ZNBC_plugin_oop.php

#Create the dir
mkdir src
mkdir src/ZnbcTadalist
mkdir src/ZnbcTadalist/Models
mkdir src/ZnbcTadalist/WordPress
mkdir src/ZnbcTadalist/WordPress/Helpers
mkdir src/ZnbcTadalist/WordPress/PostType
mkdir src/ZnbcTadalist/WordPress/Taxonomy


#Create the files for Class and Models
touch src/ZnbcTadalist/ZnbcTadalist.php
touch src/ZnbcTadalist/Models/HooksAdminInterface.php
touch src/ZnbcTadalist/Models/HooksFrontInterface.php
touch src/ZnbcTadalist/Models/HooksInterface.php


#Create the files for Helpers and PostType
touch src/ZnbcTadalist/WordPress/Helpers/PostType.php
touch src/ZnbcTadalist/WordPress/PostType/Tada.php
touch src/ZnbcTadalist/WordPress/Taxonomy/State.php


 -->
``` bash

#Be sure to be in the correct directory
$ cd /path-to-your-wp-install/wp-content/plugins/
$ mkdir 5_ZNBC_plugin_oop
$ cd 5_ZNBC_plugin_oop


#Check where you are if you are in the correct directory 5_ZNBC_plugin_oop
$ pwd

#Create the plugin file
$ touch 5_ZNBC_plugin_oop.php

#Create the directories
$ mkdir src
$ mkdir src/ZnbcTadalist
$ mkdir src/ZnbcTadalist/Models
$ mkdir src/ZnbcTadalist/WordPress
$ mkdir src/ZnbcTadalist/WordPress/Helpers
$ mkdir src/ZnbcTadalist/WordPress/PostType
$ mkdir src/ZnbcTadalist/WordPress/Taxonomy


#Create the files for Class and Models
$ touch src/ZnbcTadalist/ZnbcTadalist.php
$ touch src/ZnbcTadalist/Models/HooksAdminInterface.php
$ touch src/ZnbcTadalist/Models/HooksFrontInterface.php
$ touch src/ZnbcTadalist/Models/HooksInterface.php


#Create the files for Helpers and PostType
$ touch src/ZnbcTadalist/WordPress/Helpers/PostType.php
$ touch src/ZnbcTadalist/WordPress/PostType/Tada.php
$ touch src/ZnbcTadalist/WordPress/Taxonomy/State.php


```

**2. Create the composer.json & using Namespace**
We want to create a configuration for the autoload with the psr-4 standard. In key, I put the name of the namespace and in value, the source of the root file in which I will use the `ZnbcTadalist` namespace. This means that I could not autoload Classes whose namespace is `ZnbcTadalist` if they are not in the `src/ZnbcTadalist` folder.


``` bash
#Be sure to be at the root of your plugin directory
$ cd /path-to-your-wp-install/wp-content/plugins/5_ZNBC_plugin_oop
#To initiate the creation of the composer.json
$ composer init
```
**3. Update the composer.json with the following code**
``` json
{
    "name": "5_ZNBC_plugin_oop",
    "description": "Manage a ZnbcTadalist in WordPress via an OOP Plugin",
    "license": "GPL",
    "authors": [
        {
            "name": "BF",
            "email": "info@flaven.fr"
        }
    ],
    "autoload": {
        "psr-4": {
            "ZnbcTadalist\\": "src/ZnbcTadalist/"
        }
    }
}
```
If you launch the command below. This command will create the autoload that we need.


``` bash
#Launch the installation of the autoloader
$ composer install
```

**4. About the Class and the plugin files.**
I let you browse the files but before, here is some explanations.

- The file located at `5_ZNBC_plugin_oop/5_ZNBC_plugin_oop.php` is the real plugin file. It can be easily recognized because of the famous comment header used in any WP plugin. It is not a Class. The file allows you to start the execution and dependencies for the plugin.

- The file located at `5_ZNBC_plugin_oop/src/ZnbcTadalist.php` is the Class file. It contains the execution of different hooks, different services and different actions. It will control the proper execution of the plugin and manage all the code.

**5. Few words about the post-type and the taxonomy**

To enable the creation of the post-type named `znbc-tada` with a label `Tada`. We will create:
- A Class that handles the custom post-type `znbc-tada` in `5_ZNBC_plugin_oop/src/ZnbcTadalist/WordPress/PostType/Tada.php`
- A helper that will handle the name of the custom post type in `5_ZNBC_plugin_oop/src/ZnbcTadalist/WordPress/Helpers/PostType.php`

We will do the same operation (creating a Class and a Helper) for the taxonomy named `znbc-state` with a label `State`

**5. Instantiate the Class in a variable**
 Like always, you still have to instantiate our Class State (which must be seen as a service) when creating our actions. Remember our table: $actions is in our plugin file.

``` php
/* Instantiate the Class */
$tadalist = new ZnbcTadalist($actions);
$tadalist->execute();
```



**6. Extra for the theme: add the template for Tadalist**
We will add a template for our post_type `znbc-tada`, do not forget to go in Settings > Permalinks and reniate and to rebuild the permalinks so it will ba valaible on the frontend.

``` bash
#Copy the 2 files of the default theme eg twentynineteen
# add the post_type `znbc-tada` at the end of the file names 
# archive-{post_type}.php
# single-{post_type}.php
$ cd /path-to-your-wp-install/wp-content/themes/twentynineteen/
$ cp archive.php archive-znbc-tada.php
$ cp single.php single-znbc-tada.php
```

``` bash
#Copy 1 files of the default theme eg twentynineteen to show the taxonomy State
$ cd /path-to-your-wp-install/wp-content/themes/twentynineteen/template-parts/content/
$ cp content-excerpt.php content-excerpt-znbc.php
```

**Change in the file `/path-to-your-wp-install/wp-content/themes/twentynineteen/template-parts/content/content-excerpt-znbc.php`**
``` php
<!-- Add the taxonomy -->
<div class="entry-content">
    <?php the_terms( $post->ID, 'znbc-state', 'State: '); ?><br>
    <?php the_excerpt(); ?>
  </div><!-- .entry-content -->
```


## Read more <a href="#top">&#8593;</a>

**Object-Oriented Programming and WordPress Plugins**<br>
- Two Ways to Develop WordPress Plugins: Object-Oriented Programming<br><a href="https://code.tutsplus.com/tutorials/two-ways-to-develop-wordpress-plugins-object-oriented-programming--wp-27716" target="_blank">https://code.tutsplus.com/tutorials/two-ways-to-develop-wordpress-plugins-object-oriented-programming--wp-27716</a>


- An easy introduction to WordPress plugins with PHP classes<br><a href="https://permanenttourist.ch/2016/09/an-easy-introduction-to-wordpress-plugins-with-php-classes/" target="_blank">https://permanenttourist.ch/2016/09/an-easy-introduction-to-wordpress-plugins-with-php-classes/</a>


- WordPress Plugin Structure<br><a href="https://ttmm.io/php/wordpress-plugin-structure/" target="_blank">https://ttmm.io/php/wordpress-plugin-structure/</a>


- Code Tutorials > GitHub > How-To Tutorials<br><a href="https://code.tutsplus.com/categories/github" target="_blank">https://code.tutsplus.com/categories/github</a>




- How to create WordPress Menu Pages with OOP<br><a href="https://www.ibenic.com/creating-wordpress-menu-pages-oop/" target="_blank">https://www.ibenic.com/creating-wordpress-menu-pages-oop/</a>


- Improving you Plugin's UX by adding Labels to Post Titles<br><a href="https://www.ibenic.com/post-states-labels/
" target="_blank">https://www.ibenic.com/post-states-labels/</a>



- Designing a class to represent a wordpress meta box<br><a href="https://carlalexander.ca/designing-class-wordpress-meta-box/" target="_blank">https://carlalexander.ca/designing-class-wordpress-meta-box/</a>


- How to Create a Custom WordPress Metabox with OOP<br><a href="https://www.ibenic.com/create-custom-wordpress-metabox/" target="_blank">https://www.ibenic.com/create-custom-wordpress-metabox/</a>


- How to Create Custom WordPress Profile Fields<br><a href="https://www.ibenic.com/create-custom-wordpress-profile-fields/" target="_blank">https://www.ibenic.com/create-custom-wordpress-profile-fields/</a>


- Create WordPress Plugins with OOP Techniques<br><a href="https://code.tutsplus.com/articles/create-wordpress-plugins-with-oop-techniques--net-20153" target="_blank">https://code.tutsplus.com/articles/create-wordpress-plugins-with-oop-techniques--net-20153</a>


- Object-Oriented Programming in WordPress: Building the Plugin II<br><a href="https://code.tutsplus.com/tutorials/object-oriented-programming-in-wordpress-building-the-plugin-ii--cms-21105" target="_blank">https://code.tutsplus.com/tutorials/object-oriented-programming-in-wordpress-building-the-plugin-ii--cms-21105</a>


- Object-Oriented Programming in WordPress<br><a href="https://code.tutsplus.com/series/object-oriented-programming-in-wordpress--cms-699" target="_blank">https://code.tutsplus.com/series/object-oriented-programming-in-wordpress--cms-699</a>



- Getting Started with Object-Oriented WordPress Plugin Development<br><a href="https://www.codementor.io/aaronoverton/wordpress-development-best-practices-oop-php-du107pcek" target="_blank">https://www.codementor.io/aaronoverton/wordpress-development-best-practices-oop-php-du107pcek</a>


- An Introduction to Object-Oriented Code for WordPress Plugins<br><a href="https://premium.wpmudev.org/blog/object-oriented-code-beginners/" target="_blank">https://premium.wpmudev.org/blog/object-oriented-code-beginners/</a>


- Creating WordPress Plugins in an Object Oriented Way<br><a href="https://premium.wpmudev.org/blog/object-oriented-plugins/" target="_blank">https://premium.wpmudev.org/blog/object-oriented-plugins/</a>


- The basic OOP code structure of a WordPress Plugin – #1<br><a href="https://www.intechgrity.com/the-basic-oop-code-structure-wordpress-plugin/" target="_blank">https://www.intechgrity.com/the-basic-oop-code-structure-wordpress-plugin/</a>


- Advanced OOP for Wordpress part 9: extensible plugins using the plugins api<br><a href="https://torquemag.io/2018/08/advanced-oop-for-wordpress-part-9-extensible-plugins-using-the-plugins-api/" target="_blank">https://torquemag.io/2018/08/advanced-oop-for-wordpress-part-9-extensible-plugins-using-the-plugins-api/</a>


- Wordpress Plugin Tutorial: Developing a Plugin From Scratch<br><a href="https://www.airpair.com/wordpress/posts/developing-wordpress-plugin-from-scratch" target="_blank">https://www.airpair.com/wordpress/posts/developing-wordpress-plugin-from-scratch</a>


- Why object-oriented programming is your next step as a wordpress developer<br><a href="https://carlalexander.ca/object-oriented-programming-next-step-wordpress-developer/" target="_blank">https://carlalexander.ca/object-oriented-programming-next-step-wordpress-developer/</a>


- Very simple of WP plugin Class example<br><a href="https://github.com/remiprev/wp-sample-plugin/blob/master/wp-sample-plugin.php" target="_blank">http://wppb.io/
https://github.com/remiprev/wp-sample-plugin/blob/master/wp-sample-plugin.php</a>



- An example of how to create a WordPress Custom Post type using an Object Oriented approach<br><a href="https://gist.github.com/bambattajb/1244a2d3ff849242c80d638bb07df517" target="_blank">https://gist.github.com/bambattajb/1244a2d3ff849242c80d638bb07df517</a>


- Plugin Handbook<br><a href="https://developer.wordpress.org/plugins/" target="_blank">https://developer.wordpress.org/plugins/</a>



- PluginWordpressForFun by me<br><a href="https://github.com/bflaven/PluginWordpressForFun/blob/master/bf_quotes_manager/bf_quotes_manager.php" target="_blank">https://github.com/bflaven/PluginWordpressForFun/blob/master/bf_quotes_manager/bf_quotes_manager.php</a>


- Building WordPress Plugin in torquemag.io<br><a href="https://torquemag.io/tag/building-wordpress-plugin/" target="_blank">https://torquemag.io/tag/building-wordpress-plugin/</a>


- Advanced OOP for WordPress: Customizing REST API Endpoints by  Josh Pollock<br><a href="https://www.sitepoint.com/wordpress-advanced-oop-customizing-rest-api-endpoints/" target="_blank">https://www.sitepoint.com/wordpress-advanced-oop-customizing-rest-api-endpoints/</a>


<!-- -- good intro full intro -->
- Intro to wordpress plugin development<br><a href="https://scottdeluzio.com/series/intro-to-wordpress-plugin-development/" target="_blank">https://scottdeluzio.com/series/intro-to-wordpress-plugin-development/</a>


- Demo plugin for WordCamp Phoenix 2018<br><a href="https://github.com/ScottDeLuzio/wcmsp2018" target="_blank">https://github.com/ScottDeLuzio/wcmsp2018</a>


- Creating A WordPress Plugin Using OOP Techniques<br><a href="https://return-true.com/creating-a-wordpress-plugin-using-oop-techniques/" target="_blank">https://return-true.com/creating-a-wordpress-plugin-using-oop-techniques/</a>



- Object-Oriented Programming in WordPress: Classes<br><a href="https://code.tutsplus.com/tutorials/object-oriented-programming-in-wordpress-classes--cms-20021" target="_blank">https://code.tutsplus.com/tutorials/object-oriented-programming-in-wordpress-classes--cms-20021</a>


- Building a wordpress plugin part 2: getting off to a solid start<br><a href="https://torquemag.io/2016/08/building-wordpress-plugin/" target="_blank">https://torquemag.io/2016/08/building-wordpress-plugin/</a>


- Building a wordpress plugin part 3: Setting up a custom content type<br><a href="https://torquemag.io/2016/09/building-a-wordpress-plugin-part-3-setting-up-a-custom-content-type/" target="_blank">https://torquemag.io/2016/09/building-a-wordpress-plugin-part-3-setting-up-a-custom-content-type/</a>

- Building a wordpress plugin part 4: Looking at displaying content via shortcodes<br><a href="https://torquemag.io/2016/09/building-a-wordpress-plugin-part-4-looking-at-displaying-content-via-shortcodes/" target="_blank">https://torquemag.io/2016/09/building-a-wordpress-plugin-part-4-looking-at-displaying-content-via-shortcodes/</a>


- Building a WordPress Plugin part 5: Finishing off our settings part-5<br><a href="https://torquemag.io/2016/09/building-a-wordpress-plugin-part-five/" target="_blank">https://torquemag.io/2016/09/building-a-wordpress-plugin-part-five/</a>


- Building a WordPress plugin part 6: Further options and final thoughts part-6<br><a href="https://torquemag.io/2016/09/building-wordpress-plugin-part-6/" target="_blank">https://torquemag.io/2016/09/building-wordpress-plugin-part-6/</a>

- You down with OOP? Wordpress class based coding: part 2 – cpts and taxes<br><a href="http://addactiondan.me/oop-wordpress-class-based-coding-part-2-cpts-taxes/" target="_blank">http://addactiondan.me/oop-wordpress-class-based-coding-part-2-cpts-taxes/</a>



- Custom Database API – Reasons for Custom Tables and an API<br><a href="https://pippinsplugins.com/custom-database-api-reasons-for-custom-tables-and-an-api/" target="_blank">https://pippinsplugins.com/custom-database-api-reasons-for-custom-tables-and-an-api/</a>


- WordPress plugin for displaying job openings<br><a href="https://pippinsplugins.com/category/tutorials/advanced-tutorials/" target="_blank">https://pippinsplugins.com/category/tutorials/advanced-tutorials/</a>



- Starter framework for building WordPress plugins. Derived from the WordPress Plugin Boilerplate.<br><a href="https://github.com/slushman/wp-starter-plugin" target="_blank">https://github.com/slushman/wp-starter-plugin</a>


- Chris Wilcoxson - Using WordPress Plugin Boilerplate<br><a href="https://www.youtube.com/watch?v=Py525NnmHHI" target="_blank">https://www.youtube.com/watch?v=Py525NnmHHI</a>


- Example Implementations of PSR-4<br><a href="https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-4-autoloader-examples.md#class-example" target="_blank">https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-4-autoloader-examples.md#class-example</a>


- Drag and drop, responsive WordPress form builder. <br><a href="https://github.com/CalderaWP/Caldera-Forms" target="_blank">https://github.com/CalderaWP/Caldera-Forms</a>


- Building custom rest API routes using object-oriented PHP<br><a href="https://torquemag.io/2016/08/building-custom-rest-api-routes-using-object-oriented-php/" target="_blank">https://torquemag.io/2016/08/building-custom-rest-api-routes-using-object-oriented-php/</a>


- Example code for my Torque article on creating REST APIs with WordPress<br><a href="https://github.com/Shelob9/rest-api-example/" target="_blank">https://github.com/Shelob9/rest-api-example/</a>


- REST API Handbook<br><a href="https://v2.wp-api.org/" target="_blank">https://v2.wp-api.org/</a>


- List of WordPress Plugins advised by instantwp<br><a href="https://instantwp.com/wordpress-plugins/" target="_blank">https://instantwp.com/wordpress-plugins/</a>


**Composer**<br>

- composer update<br><a href="https://www.pmg.com/blog/composer-and-wordpress/" target="_blank">https://www.pmg.com/blog/composer-and-wordpress/</a>

- Example composer file for a WordPress site<br><a href="https://gist.github.com/Shelob9/7f966fa7312147531727" target="_blank">https://gist.github.com/Shelob9/7f966fa7312147531727</a>

- Example composer file for a WordPress site<br><a href="https://gist.github.com/Shelob9/ad2e96e4aeabfa87450a" target="_blank">https://gist.github.com/Shelob9/ad2e96e4aeabfa87450a</a>


- Professional WordPress Plugin Development<br><a href="http://www.wrox.com/WileyCDA/WroxTitle/Professional-WordPress-Plugin-Development.productCd-0470916222.html" target="_blank">http://www.wrox.com/WileyCDA/WroxTitle/Professional-WordPress-Plugin-Development.productCd-0470916222.html</a>


- Introduction to Object-Oriented PHP for WordPress Developers<br><a href="https://wpshout.com/courses/object-oriented-php-for-wordpress-developers/complete-guide-to-object-oriented-php/" target="_blank">https://wpshout.com/courses/object-oriented-php-for-wordpress-developers/complete-guide-to-object-oriented-php/</a>


- WordPress Plugins: Procedural or OOP?<br><a href="https://stevegrunwell.com/blog/wordpress-plugin-design-patterns/" target="_blank">https://stevegrunwell.com/blog/wordpress-plugin-design-patterns/</a>

**Namespaces**<br>

- Namespaces in WordPress Plugins<br> <a href="https://geekytomato.com/namespaces-wordpress-plugins/" target="_blank">https://geekytomato.com/namespaces-wordpress-plugins/</a>


- PHP Namespaces Basics<br><a href="https://www.ibenic.com/php-namespaces-wordpress-plugins/" target="_blank">https://www.ibenic.com/php-namespaces-wordpress-plugins/</a>

- How to use PHP's namespaces and constants within your WordPress plugins<br><a href="https://ryansechrest.com/2012/10/how-to-use-phps-namespaces-and-constants-within-your-wordpress-plugins/" target="_blank">https://ryansechrest.com/2012/10/how-to-use-phps-namespaces-and-constants-within-your-wordpress-plugins/</a>

- What "Namespaces" Mean for WordPress Developers<br><a href="https://wpshout.com/what-namespaces-mean-for-wordpress-developers/" target="_blank">https://wpshout.com/what-namespaces-mean-for-wordpress-developers/</a>

- How to use PHP Namespaces in WordPress Plugins<br><a href="https://www.ibenic.com/php-namespaces-wordpress-plugins/" target="_blank">https://www.ibenic.com/php-namespaces-wordpress-plugins/</a>


- A Crash-course in PHP Namespaces for WordPress Developers<br><a href="https://stevegrunwell.com/blog/php-namespaces-wordpress/" target="_blank">https://stevegrunwell.com/blog/php-namespaces-wordpress/</a>


- Understanding Namespaces in the WordPress Hook System<br><a href="https://www.sitepoint.com/understanding-namespaces-wordpress-hook-system/" target="_blank">https://www.sitepoint.com/understanding-namespaces-wordpress-hook-system/</a>


- A good author for WP on sitepoint: Collins Agbonghama<br><a href="https://www.sitepoint.com/author/acollins/" target="_blank">https://www.sitepoint.com/author/acollins/</a>


- php namespaces for wordpress developers by justin tadlock<br><a href="http://justintadlock.com/archives/2018/12/14/php-namespaces-for-wordpress-developers" target="_blank">http://justintadlock.com/archives/2018/12/14/php-namespaces-for-wordpress-developers</a>

- Using Namespaces and Autoloading in WordPress Plugins, Part 1<br><a href="https://code.tutsplus.com/tutorials/using-namespaces-and-autoloading-in-wordpress-plugins-part-1--cms-27157" target="_blank">https://code.tutsplus.com/tutorials/using-namespaces-and-autoloading-in-wordpress-plugins-part-1--cms-27157</a>


- Using Namespaces and Autoloading in WordPress Plugins, Part 2<br><a href="https://code.tutsplus.com/tutorials/using-namespaces-and-autoloading-in-wordpress-plugins-part-2--cms-27203" target="_blank">https://code.tutsplus.com/tutorials/using-namespaces-and-autoloading-in-wordpress-plugins-part-2--cms-27203</a>


- Using Namespaces and Autoloading in WordPress Plugins, Part 3<br><a href="https://code.tutsplus.com/tutorials/using-namespaces-and-autoloading-in-wordpress-plugins-3--cms-27332" target="_blank">https://code.tutsplus.com/tutorials/using-namespaces-and-autoloading-in-wordpress-plugins-3--cms-27332</a>


- Using Namespaces and Autoloading in WordPress Plugins, Part 4<br><a href="https://code.tutsplus.com/tutorials/using-namespaces-and-autoloading-in-wordpress-plugins-4--cms-27342" target="_blank">https://code.tutsplus.com/tutorials/using-namespaces-and-autoloading-in-wordpress-plugins-4--cms-27342</a>


- Sample plugin from "Using Namespaces and Autoloading in WordPress Plugins"<br><a href="https://cms-assets.tutsplus.com/uploads/users/34/posts/27203/attachment/tutsplus-namespace-demo.zip?" target="_blank">https://cms-assets.tutsplus.com/uploads/users/34/posts/27203/attachment/tutsplus-namespace-demo.zip</a>


- Using Namespaces and Autoloading in WordPress Plugins<br><a href="https://code.tutsplus.com/series/using-namespaces-and-autoloading-in-wordpress-plugins--cms-1071" target="_blank">https://code.tutsplus.com/series/using-namespaces-and-autoloading-in-wordpress-plugins--cms-1071</a>


- Namespaces in WordPress development<br><a href="https://richardtape.com/2015/05/27/namespaces-in-wordpress-development/" target="_blank">https://richardtape.com/2015/05/27/namespaces-in-wordpress-development/</a>

**Advanced Concepts**<br>
- Polymorphism and Wordpress: interfaces<br><a href="https://carlalexander.ca/polymorphism-wordpress-interfaces/" target="_blank">https://carlalexander.ca/polymorphism-wordpress-interfaces/</a>

- Designing a class around wordpress hooks<br><a href="https://carlalexander.ca/designing-class-wordpress-hooks/" target="_blank">https://carlalexander.ca/designing-class-wordpress-hooks/</a>


**How-to make a plugin (French)**
- Démarrer une extension wordpress avec la programmation orientée objet (poo) – partie 1<br><a href="http://www.geekpress.fr/extension-wordpress-poo/" target="_blank">http://www.geekpress.fr/extension-wordpress-poo/</a>


- Démarrer une extension wordpress avec la programmation orientée objet (poo) – partie 2<br><a href="http://www.geekpress.fr/wp-todolist-extension-wordress-poo-part-2/" target="_blank">http://www.geekpress.fr/wp-todolist-extension-wordress-poo-part-2/</a>
  


**Unit Testing for WP plugin**

- WordPress Plugin Unit Test with BrainMonkey and PHPUnit<br><a href="https://swas.io/blog/wordpress-plugin-unit-test-with-brainmonkey/" target="_blank">https://swas.io/blog/wordpress-plugin-unit-test-with-brainmonkey/</a>

- PHPUnit tests within docker for WordPress development (excellent video)<br><a href="https://www.youtube.com/watch?v=9CEoapNrrSc" target="_blank">https://www.youtube.com/watch?v=9CEoapNrrSc</a>


- WordPress Test Suite<br><a href="https://github.com/wpup/test-suite" target="_blank">https://github.com/wpup/test-suite</a>


- docker-wptest<br><a href="https://github.com/frozzare/docker-wptest" target="_blank">https://github.com/frozzare/docker-wptest</a>



- Introduction to wordpress unit testing<br><a href="https://carlalexander.ca/introduction-wordpress-unit-testing/" target="_blank">https://carlalexander.ca/introduction-wordpress-unit-testing/</a>


- An Introduction To Automated Testing Of WordPress Plugins With PHPUnit<br><a href="https://www.smashingmagazine.com/2017/12/automated-testing-wordpress-plugins-phpunit/" target="_blank">https://www.smashingmagazine.com/2017/12/automated-testing-wordpress-plugins-phpunit/</a>


- The Beginner’s Guide to Unit Testing: What Is Unit Testing?<br><a href="https://code.tutsplus.com/articles/the-beginners-guide-to-unit-testing-what-is-unit-testing--wp-25728
" target="_blank">https://code.tutsplus.com/articles/the-beginners-guide-to-unit-testing-what-is-unit-testing--wp-25728</a>


- The Beginner’s Guide to Unit Testing: Building a Testable Plugin<br><a href="https://code.tutsplus.com/articles/the-beginners-guide-to-unit-testing-building-a-testable-plugin--wp-25741" target="_blank">https://code.tutsplus.com/articles/the-beginners-guide-to-unit-testing-building-a-testable-plugin--wp-25741</a>



**Tools**

- Some debug tool: Plugin Debug Bar<br><a href="https://fr.wordpress.org/plugins/debug-bar/" target="_blank">https://fr.wordpress.org/plugins/debug-bar/</a>

- Some debug tool: Debug This<br><a href="https://fr.wordpress.org/plugins/debug-this/" target="_blank">https://fr.wordpress.org/plugins/debug-this/</a>


- 10 WordPress Debugging Tools to Find Errors and Warnings<br><a href="https://www.wpoptimus.com/527/debugging-tools-plugins-wordpress/" target="_blank">https://www.wpoptimus.com/527/debugging-tools-plugins-wordpress/</a>

- Front-end tooling for WordPress themes & plugins<br><a href="https://wpack.io/" target="_blank">https://wpack.io/</a>






