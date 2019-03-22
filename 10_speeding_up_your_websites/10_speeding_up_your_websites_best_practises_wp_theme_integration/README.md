<a id="top"></a>
# How to start a WP theme creation, integrating the best practices for optimization and speed, based on Gulp. (part 2)


**An article about how-to build a WP theme with the help of Gulp, an essential facilitator in WordPress theme creation. This article is part of the series `All you need to know about WP optimization`**

**<a href="#1_bestpractises">1. Some requirements** &#8595;</a><br>
**<a href="#2_bestpractises">2. Gulp for WordPress: Initial Setup** &#8595;</a><br>
**<a href="#3_bestpractises">3. More resources** &#8595;</a><br>
**<a href="#4_bestpractises">4. Let's play with Gulp for a minutes** &#8595;</a><br>
**<a href="#5_bestpractises">5. Do some Gulp task for CSS** &#8595;</a><br>
**<a href="#6_bestpractises">6. Do some Gulp task for images** &#8595;</a><br>
**<a href="#7_bestpractises">7. More resources** &#8595;</a><br>



**All the resources used in that article are available in the directory of the Github account @ [/10_speeding_up_your_websites/10_speeding_up_your_websites_best_practises_wp_theme_integration/](/10_speeding_up_your_websites/10_speeding_up_your_websites_best_practises_wp_theme_integration/)**

<a id="1_bestpractises"></a>
## 1. Some requirements <a href="#top">&#8593;</a>


**Install Homebrew**<br />
[Check the website brew.sh](https://brew.sh/) or launch in the console the following command.

```bash
/usr/bin/ruby -e "$(curl -k -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

**Install Node and NPM**<br />

```bash
brew update
brew doctor
export PATH="/usr/local/bin:$PATH"
brew install node
# to check the version of node and npm
node --version
npm --version
```
Source: <a href="https://changelog.com/posts/install-node-js-with-homebrew-on-os-x" target="_blank">https://changelog.com/posts/install-node-js-with-homebrew-on-os-x</a>

On windows, you can search on Google "Install and use Node.js on Windows", here is an excellent how-to: <a href="https://blog.teamtreehouse.com/install-node-js-npm-windows" target="_blank">How to Install Node.js® and NPM on Windows</a> 

<a id="2_bestpractises"></a>
## 2. Gulp for WordPress: Initial Setup <a href="#top">&#8593;</a>

+ Gulp for WordPress: Initial Setup
https://css-tricks.com/gulp-for-wordpress-initial-setup/

+ Gulp for WordPress: Creating the Tasks
https://css-tricks.com/gulp-for-wordpress-creating-the-tasks/

**Go to the directory where you want to create you WP theme. You will name your WordPress theme `zambia-wp-test-1`**

`source`, a directory where our original un-compiled assets will live.

`destination`, a directory where all of our compiled, minified and concatenated versions of the theme assets will be distributed after the tasks have completed.

``` bash
cd /[path-to-your-wp-theme-try]/zambia-wp-test-1

#make the directory for your WP theme
mkdir zambia-wp-test-1
cd zambia-wp-test-1/

#first level of directory
mkdir source
mkdir languages
mkdir destination
mkdir bundled

#second level of directory for source, it is often named src
mkdir source/css
mkdir source/images
mkdir source/js


#second level of directory for destination, it is often named  for distribution
mkdir destination/css
mkdir destination/images
mkdir destination/js

```
<a id="3_bestpractises"></a>
## 3. Create a starter theme named `zambia-wp-test-1` <a href="#top">&#8593;</a>

Let's create a WP with the help of the website,<a href="https://underscores.me/" target="_blank">underscores, a starter theme for WordPress (https://underscores.me/)</a>

``` bash
#go the directory of your WP theme
cd /[path-to-your-wp-theme-try]/zambia-wp-test-1/

#Install gulp globally so we can use Gulp in the command line
npm install --global gulp-cli
```


If you don't have a package.json, create one, the simplest is to get assistance from NPM. For that, just run the command  `npm init` which will walk you through giving it a name, version, description, etc.

``` bash
#Install Gulp for good
npm init
npm install gulp --save-dev
gulp --version
```

<a id="4_bestpractises"></a>
## 4. Let's play with Gulp for a minutes <a id="1_bestpractises"></a>
We will for the moment define some tasks with no consequences, just to watch Gulp execute them.

``` bash
# writing Gulp tasks
touch gulpfile.js
```
``` javascript
/* usage */

// cd /Users/brunoflaven/Documents/02_copy/_technical_training_zambia_znbc/000_release_version/10_speeding_up_your_websites/speeding-up-your-websites-try-1/zambia-wp-test-1

// if need to known all the tasks
// gulp --tasks 


// gulp start  
var gulp = require('gulp');
gulp.task('start', function(cb) {
  console.log('Task 1 for zambia-wp-test-1');
  console.log('Task 2 for zambia-wp-test-1');
  console.log('Task 3 for zambia-wp-test-1');
  cb();
});

// to launch the task named end
// gulp end
gulp.task('end', function(cb) {
  console.log('Task 4 for zambia-wp-test-1');
  console.log('Task 5 for zambia-wp-test-1');
  console.log('Task 6 for zambia-wp-test-1');
  cb();
});

// to launch the default task
//gulp
gulp.task('default', function(cb) {
  console.log('Default Task for zambia-wp-test-1');
  cb();
});

// change order for fun
// gulp start end default 
// gulp end default start
```

**In order  to use ES6 in the Gulpfile , you'd better install Babel. This last is a JavaScript compiler.**


``` bash
#Using ES6 in the Gulpfile

#install babel
npm install --save-dev @babel/register @babel/preset-env @babel/core
#rename the gulpfile.js
mv gulpfile.js gulpfile.babel.js

#create a .babelrc inside the theme folder
touch .babelrc
```

This file `.babelrc` will tell Babel which preset to use to compile our JavaScript.

**The source for `.babelrc`**
``` bash
{
  "presets": ["@babel/preset-env"]
}
```

**The source for `gulpfile.babel.js`**
``` javascript
/* usage */

// cd /Users/brunoflaven/Documents/02_copy/_technical_training_zambia_znbc/000_release_version/10_speeding_up_your_websites/speeding-up-your-websites-try-1/zambia-wp-test-1

import gulp from 'gulp';

// to launch the task named start
// gulp start  
export const start = (cb) => {
  console.log('start Task 1 for zambia-wp-test-1');
  console.log('start Task 2 for zambia-wp-test-1');
  console.log('start Task 3 for zambia-wp-test-1');
  cb();
}

// to launch the task named end
// gulp end
export const end = (cb) => {
  console.log('end Task 4 for zambia-wp-test-1');
  console.log('end Task 5 for zambia-wp-test-1');
  console.log('end Task 6 for zambia-wp-test-1');
  cb();
}


// export default end /* or gulp end */
// export default start /* or gulp start */

/* play it again Sam */
const my_tasks = gulp.series(end, start);
export default my_tasks /* or gulp */

```

**Development vs. Production**
You need to install a package called `yargs` to specifiy if we run the tasks for development or production for instance.

``` bash
#Development vs. Production
npm install --save-dev yargs
```

Remember that you can pass any value to `yargs.argv.the_prod;`  and `yargs.argv.the_development;`, I have tried just for fun to pass Yes and No in Russian.

``` javascript
/* usage */

// cd /Users/brunoflaven/Documents/02_copy/_technical_training_zambia_znbc/000_release_version/10_speeding_up_your_websites/speeding-up-your-websites-try-1/zambia-wp-test-1


// gulp zambia_demo /* we will get undefined for the const PRODUCTION that's logic */
// gulp zambia_demo --the_prod=true /* we will get the correct value for const PRODUCTION that's logic */

// gulp --the_prod=true
// // gulp --the_development=true
// gulp --tasks
// gulp --the_development=Да
// gulp --the_prod=нет
 

// IMPORT
import gulp from 'gulp';
import yargs from 'yargs';

const PRODUCTION = yargs.argv.the_prod;
const DEVELOPMENT = yargs.argv.the_development;

export const zambia_demo = (cb) => {
  console.log('zambia_demo Task 1 for zambia-wp-test-1');
  // console.log(PRODUCTION); /* gulp --the_prod=true */
  console.log(DEVELOPMENT); /* gulp --the_development=true */
  cb();
}

export default zambia_demo
```

<a id="5_bestpractises"></a>
## 5. Do some Gulp task for CSS <a href="#top">&#8593;</a>

**Okay, it was fun to play with Gulp, let's go deeper in manipulating real tasks in WordPress theme creation. We will install some extra plugins.**


**Be sure to be in your theme folder and to have all the required directories.**

``` bash
zambia-wp-test-1/
│── bundled/
│    ├── ...
│    └── ...
│── destination/
│    ├── css
│    ├── images
│    └── js
│── languages/
│    ├── ...
│    └── ...
│── node_modules/
│    ├── ...
│    └── ...
│── source/
│    ├── css
│    ├── images
│    └── js
├── gulpfile.babel.js
├── gulpfile.babel_0.js
├── gulpfile_0.js
├── package-lock.json
├── package.json
├──...
```
**Let's add a css file named `style.scss` in `source/scss/`**


``` bash
#first stylesheet
touch source/scss/style.scss
#second stylesheet
touch source/scss/admin.scss
```

```bash
#be sure you are in your theme folder
cd /[path-to-your-wp-theme-try]/zambia-wp-test-1

#load the required package for the style task
npm install --save-dev gulp-sass gulp-clean-css gulp-if gulp-sourcemaps gulp-postcss autoprefixer
```

We have 2 stylesheets in the source directory, let's blow up them with gulp.

```bash
gulp styles #just to do the task
gulp styles --prod #do the task and minify
```
the command line will be on a constant, ongoing watch for changes in any .scss files inside the src/scss directory. And, when those changes happen, the styles task will run right away with no further action on our part.

``` javascript
// IMPORT
// import { src, dest } from 'gulp';
// including the watch task
import { src, dest, watch } from 'gulp';

/*

The rest of gulp

*/


export const watchaForChanges = () => {
  watch('source/scss/**/*.scss', styles);
}

/* launch this task and the task will be instantly running. */
// gulp watchaForChanges 

```

<a id="6_bestpractises"></a>
## 6. Do some Gulp task for images <a href="#top">&#8593;</a>

We will optimize the images with the help of the package `gulp-imagemin`.
```bash
#Creating the images task
npm install --save-dev gulp-imagemin
```

*If you are looking for big images, go at <a href="https://unsplash.com/search/photos/high-definition" target="_blank">High definition pictures* https://unsplash.com/search/photos/high-definition</a>

**Create a task that will delete the destination folder.**


```bash
#Creating the copy task, if you are bored to copy all the files in destination folder
npm install --save-dev del
```

```javascript
import { src, dest, watch, series, parallel } from 'gulp';

export const dev = series(clean, parallel(styles, images, copy), watchForChanges)
export const build = series(clean, parallel(styles, images, copy))
export default dev;
```

--- change the package.json
```javascript
"scripts": {
  "start": "gulp",
  "build": "gulp build --prod"
},
```

--- using npm
```bash
npm run start #In our case, start will run gulp and gulp will run the default gulp task, which is dev.
npm run build #will run gulp build --prod
```

In order to control the browser using Browsersync, we have to initialize a Browsersync server. This is different from a local server where WordPresss would typically live. the first task is serve, which starts the Browsersync server, and is pointed to our local WordPress server using the proxy option. The second task will simply reload the browser.


<!-- site-footer -->
```bash
#Creating the scripts task
npm install --save-dev webpack-stream
npm install --save-dev babel-loader
npm install --save-dev vinyl-named

#Refreshing the browser with Browsersync
npm install browser-sync gulp --save-dev

#install the rest
npm install --save-dev gulp-zip
npm install --save-dev gulp-replace
npm install --save-dev gulp-wp-pot


```

**Here is the structure of the folder with the wp theme**

``` bash
zambia-wp-test-1/
│── inc/
│    ├── custom-header.php
│    └── ...
│── js/
│    ├── navigation.js
│    └── ...
│── languages/
│    ├── zambia-wp-test-1.pot
│    └── ...
│── template-parts/
│    ├── content-none.php
│    └── ...
│── layouts/
│    ├── content-sidebar.css
│    └── ...
├── footer.php
├── index.php
├── 404.php
├── archive.php
├── comments.php
├──...
```

**Here is the structure of the folder from the article**
``` bash
zambia-wp-test-1/
├── index.php
├── style.css
└── src/
    ├── images/
    │   └── cat.jpg
    ├── js/
    │   ├── components/
    │   │   └── slider.js
    │   └── bundle.js
    └── scss/
        ├── components/
        │   └── slider.scss
        └── bundle.scss
```



<a id="7_bestpractises"></a>
## 7. More resources <a href="#top">&#8593;</a>



- Using gulp to compile .po files to json for e.g. AngularJS $translate<br><a href="http://blog.edenhauser.com/using-gulp-to-compile-po-files-to-json-for-e-g-angularjs-translate/" target="_blank">http://blog.edenhauser.com/using-gulp-to-compile-po-files-to-json-for-e-g-angularjs-translate/</a>


- Gulp task to generate POT file and .php clone files for WPML<br><a href="https://github.com/timber/timber/issues/1465" target="_blank">https://github.com/timber/timber/issues/1465</a>



- A Beginners Guide to the Task Runner Gulp<br><a href="https://andy-carter.com/blog/a-beginners-guide-to-the-task-runner-gulp" target="_blank">https://andy-carter.com/blog/a-beginners-guide-to-the-task-runner-gulp</a>


- A Gulp.js Tutorial<br><a href="https://zellwk.com/blog/gulp-tutorial/" target="_blank">https://zellwk.com/blog/gulp-tutorial/
https://code.tutsplus.com/tutorials/using-gulp-for-wordpress-automation--cms-23081</a>


- How to Use BrowserSync for Faster Development<br><a href="https://scotch.io/tutorials/how-to-use-browsersync-for-faster-development" target="_blank">https://scotch.io/tutorials/how-to-use-browsersync-for-faster-development
</a>



- Gulp from Scratch: Browser-Sync Auto Reload HTTPS<br><a href="https://www.youtube.com/watch?v=NDjE_LCHbuI" target="_blank">https://www.youtube.com/watch?v=NDjE_LCHbuI</a>


- Introducing WPGulp: An Easy to Use WordPress Gulp Boilerplate<br><a href="https://ahmadawais.com/introducing-wpgulp-an-easy-to-use-wordpress-gulp-boilerplate/" target="_blank">https://ahmadawais.com/introducing-wpgulp-an-easy-to-use-wordpress-gulp-boilerplate/</a>



- How To Use Gulp Build System To Automate Your Workflow<br><a href="https://phpocean.com/tutorials/front-end/how-to-use-gulp-build-system-to-automate-your-workflow/21" target="_blank">https://phpocean.com/tutorials/front-end/how-to-use-gulp-build-system-to-automate-your-workflow/21</a>



- Using Gulp to automate the boring stuff<br><a href="https://garywoodfine.com/using-gulp-to-automate-the-boring-stuff/" target="_blank">https://garywoodfine.com/using-gulp-to-automate-the-boring-stuff/</a>


- How to run PHP Server with BrowserSync and Gulp<br><a href="https://threenine.co.uk/php-server-browsersync-gulp/" target="_blank">https://threenine.co.uk/php-server-browsersync-gulp/</a>



- WordPress Gulp Workflow<br><a href="https://github.com/ahmadawais/WPGulp" target="_blank">https://github.com/ahmadawais/WPGulp</a>


- Gulp for WordPress: Initial Setup<br><a href="https://css-tricks.com/gulp-for-wordpress-initial-setup/" target="_blank">https://css-tricks.com/gulp-for-wordpress-initial-setup/</a>


- Gulp for WordPress: Creating the Tasks<br><a href="https://css-tricks.com/gulp-for-wordpress-creating-the-tasks/" target="_blank">https://css-tricks.com/gulp-for-wordpress-creating-the-tasks/</a>


- The quick guide to speeding up your websites<br><a href="https://www.webdesignerdepot.com/2015/07/the-quick-guide-to-speeding-up-your-websites/" target="_blank">https://www.webdesignerdepot.com/2015/07/the-quick-guide-to-speeding-up-your-websites/</a>


- Sass y Gulp para gestionar y agilizar tus temas de WordPress (Spanish)<br><a href="https://danielcastanera.com/sass-gulp-gestionar-agilizar-tus-temas-wordpress/" target="_blank">https://danielcastanera.com/sass-gulp-gestionar-agilizar-tus-temas-wordpress/</a>


- Supercharge Your Local WordPress Workflow With Gulp and Browsersync<br><a href="https://webdesign.tutsplus.com/tutorials/supercharge-your-local-wordpress-development--cms-28303" target="_blank">https://danielcastanera.com/sass-gulp-gestionar-agilizar-tus-temas-wordpress/</a>




