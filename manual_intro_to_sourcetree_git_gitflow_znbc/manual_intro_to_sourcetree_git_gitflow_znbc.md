## How-to create a git repository, manage with SourceTree, activate Gitflow
In manual_intro_to_sourcetree_git_gitflow_znbc.md, the main actions for ZNBC  future repository.

### 1. Create the repository on your github account and clone from URL in SourceTree
Create the README.md at the same with the help of github.

**You must create a git account on one of this service to keep track of your changes in your theme, plugins... etc. This is part of virtuous circle of Continuous Integration advocated by agile methodology.**

**On github**
| FIELD           | VALUE                                             |
| ----------------|---------------------------------------------------|
| Source URL      | https://github.com/bflaven/git-demo               |
| Destination path| /Users/brunoflaven/Documents/03_git/git-demo      |
| Name            | git-demo                                          |

**On bitbucket**
| FIELD           | VALUE                                             |
| ----------------|---------------------------------------------------|
| Source URL      | https://bitbucket.org/bflaven/git-demo               |
| Destination path| /Users/brunoflaven/Documents/04_bitbucket/git-demo      |
| Name            | git-demo                                          |





### 2. Pull content from the remote directory
You have to grab the content from your repository on Github.


### 3. FEATURE BRANCH: Create and finish feature branches
**CAUTION_1: ALWAYS WORK ON THE DEVELOPMENT BRANCH.**
**CAUTION_2: ALWAYS select the feature branch that has been created.**


Before you add some content in the files: `index.php`, `README.md`, yopu need to select the develop branch. You must also named the feature branch with the ticket number coming from your project management system e.g Trello




``` javascript
feature-#456 // coming from marketing dashboard 
feature-#457
feature-#87687687 // coming from technical dashboard 
feature-#459
feature-#87678687 // coming from internal dashboard
feature-#461
feature-#462
feature-#46575765 // coming from marketing dashboard
feature-#31232432
feature-#31232432


/* And so on... */

```


**In the existing `README.md`**
``` readme
# git-demo
Demo for ZNBC
<!-- change 1 - Add some content in the README.md -->
<!-- change 2 - Add some content in the README.md -->
<!-- change 3 - Add some content in the README.md -->
<!-- change 4 - Add some content in the README.md -->
<!-- change 5 - Add some content in the README.md -->
<!-- change 6 - Add some content in the README.md -->
<!-- change 7 - Add some content in the README.md -->
<!-- change 8 - Add some content in the README.md -->
<!-- change 9 - Add some content in the README.md -->
<!-- change 10 - Add some content in the README.md -->


<!-- And so on... -->


```
**In the created `index.php`**
``` bash
#cd /[your-path-to-your-git-demo-directory]/
cd /Users/brunoflaven/Documents/03_git/git-demo
touch index.php
```
**In the created `index.php`**
``` php
<?php
/* index.php */

/* change 1 - Add some content in the file index.php */
/* change 2 -  Add some content in the file index.php */
/* change 3 - Add some content in the file index.php */
/* change 4 - Add some content in the file index.php */
/* change 5 - Add some content in the file index.php */
/* change 6 - Add some content in the file index.php */
/* change 7 - Add some content in the file index.php */
/* change 8 - Add some content in the file index.php */
/* change 9 - Add some content in the file index.php */
/* change 10 - Add some content in the file index.php */

/* And so on... */

?>
```




### 4. RELEASE BRANCH: Create and finish release branches

**CAUTION_1: ALWAYS WORK ON THE DEVELOPMENT BRANCH.**
**CAUTION_2: ALWAYS select the release branch that has been created.**

You are about to release a version of your plugin.

``` php
/* example of version for your WP plugin */

/*
Version: 1.0.0 (Version_1.0.0)
Version: 1.0.1 (Version_1.0.1)
Version: 1.0.2 (Version_1.0.2)
Version: 1.0.3 (Version_1.0.3)
Version: 1.0.4 (Version_1.0.4)
Version: 1.0.5 (Version_1.0.5)
Version: 1.0.6 (Version_1.0.6)
Version: 1.0.7 (Version_1.0.7)
Version: 1.0.8 (Version_1.0.8)
Version: 1.0.9 (Version_1.0.9)
Version: 1.1.0 (Version_1.1.0)
Version: 1.1.1 (Version_1.1.1)
*/


/* And so on... */



```

### 4. HOTFIX BRANCH: Create and finish hotfix branches

**CAUTION_1: ALWAYS WORK ON THE DEVELOPMENT BRANCH.**
**CAUTION_2: ALWAYS select the hotfix branch that has been created.**


You are about to pass a hotfix of your plugin.

``` javascript
hotfix-#987957657 // coming from marketing dashboard 
hotfix-#23565
hotfix-#5526890 // coming from technical dashboard 
hotfix-#875
hotfix-#13468 // coming from internal dashboard
hotfix-#986534
hotfix-#56543225

/* And so on... */


```

### 5. The video 
- A great video on how-to use SourceTree with GitFlow. <br><a href="https://www.youtube.com/watch?v=z53JJ7P78Vc" target="_blank">https://www.youtube.com/watch?v=z53JJ7P78Vc</a>



**The video expose the main principles given above on: FEATURE branch, RELEASE branch, HOTFIX branch**
<iframe width="560" height="315" src="https://www.youtube.com/embed/z53JJ7P78Vc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


















