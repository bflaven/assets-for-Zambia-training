## Using GitFlow Workflow and SourceTree

### 1. Intro
Even though, you are not a pure developer, you may be interested in benefit from a tool like Git to manage content version like for courses, presentations or any kind of educational materials for instance...etc..

You can even want to push the boundaries of Git and make the most of it by activating the Gitflow workflow. I will define later what is the Gitflow workflow.

In our article, the Gitflow workflow will be handle with the help of SourceTree.

With no doubt, you can use SourceTree from Atlassian. It is a very comprehensive software to manage your repositories and more over activate the Workflow Gitflow. You can first work on a local repository to familiarize with the most common commands.

After, this small training, you can add a real remote repository to append some commands to your knowledge.

+ What is the workflow Gitflow ?

A Gitflow workflow is a Git workflow pattern or design published and popularized by Vincent Driessen. The main concept in the pattern is the notion of Branch. 

The Gitflow workflow defines a strict branch creation model designed around the delivery of the project. This provides a solid framework for managing larger projects.

**To summarize briefly, this Gitflow workflow is organized around 3 keywords.**

1. Feature
2. Release
3. Hotfix

**My user story is very simple: I want to activate the Gitflow workflow on a local repository and discover through SourceTree the main actions attached to the keywords: Feature, Release, Hotfix.**

**In a second time, my user story will integrate a remote repository. I will open a remote repository on Github and synchronize it with my local repository via a Gitflow workflow.**

###How to set up the workflow Gitflow in a local repository ?

We will see how to setup a local repository and activate the Gitflow workflow.

####1 - Initialize the repository (01_setup_the_repository)

Before anything, I will create a repository locally, add only 2 files inside this repository (index.php,README.md). 

For the moment, I am not adding any remote repository on Github for instance. The purpose will be only to manage the files locally and familiarize both with Gitflow workflow and SourceTree. 

<pre>
cd /Users/brunoflaven/Documents/03_git/
mkdir 
cd /git-demo/
touch index.php
touch README.md
</pre>

I added some element in the files. I made the initial commit, it creates the "master". 


<!-- 
--- see 8_using_git_for_wp_setup_repo_step_1.png
--- see 8_using_git_for_wp_setup_repo_step_2.png
--- see 8_using_git_for_wp_setup_repo_step_3.png
--- see 8_using_git_for_wp_setup_repo_step_4.png
--- see 8_using_git_for_wp_setup_repo_step_5.png
--- see 8_using_git_for_wp_setup_repo_step_6.png 
-->


####2 -  Initialize Gitflow for this repository (02_setup_the_gitflow_for_the_repository)
I am ready to initialize Gitflow using the Gitflow icon. If you click on the icon, Sourcetree will offer. Keep the configuration as it. As a result, you will have a “master” and a “develop” branch. These 2 branches both share the same files.

<!-- 
--- see 8_using_git_for_wp_gitflow_repo_step_1.png
--- see 8_using_git_for_wp_gitflow_repo_step_2.png
-->




Note that if you cannot find it in the Toolbar's SourceTree. By right-clicking on the Toolbar, you can add the Gitflow icon.

<!-- 
--- see 8_using_git_for_wp_missing_gitflow_icon_step_1.png
--- see 8_using_git_for_wp_missing_gitflow_icon_step_2.png
-->



One other advice, you can activate the output of the console history, it will probably help you to understand what are the real commands executed by the GUI.

<!-- 
--- see 8_using_git_for_wp_missing_command_history.png
 -->


####3 -  Create a feature branch in this repository (03_create_a_feature_branch)

Make sure you are on the "develop" branch.
I am starting a new feature branch

+ with no ticket
<!-- 
--- see 8_using_git_for_wp_create_a_feature_branch_step_1.png
--- see 8_using_git_for_wp_create_a_feature_branch_step_2.png
--- see 8_using_git_for_wp_create_a_feature_branch_step_3.png
 -->

+ with a ticket from trello or redmine of whatever is your project management tool

Let's say I have picked a ticket on my agile board. The ticket number is #9575673. This ticket consists of changing the readme of the project. You will create a feature branch with the ticket number e.g. #9575673 so you can make comfortably the changes that you want. When you are done, you will have to finish this feature branch.

####4 -  Finish a feature branch in this repository (04_finishing_a_feature_branch_ticket_nb)

When you finished your work on this branch. It means that you want that your feature be "validated" by your PO. Concretely, your ticket will change from "In progress" to "Test by the PO" so it can enter into the acceptance phase or validation phase.

Finishing a feature branch means that you are going to merge the work you made on files into the "develop" branch. You may also at the same time delete the feature branch you are working on.

In the real world, do not forget to pull "develop" first, to avoid any merge conflict. If not, merge conflicts will arise probably.

<!-- 
--- see 04_finishing_a_feature_branch_ticket_nb_step_1.png
--- see 04_finishing_a_feature_branch_ticket_nb_step_2.png
--- see 04_finishing_a_feature_branch_ticket_nb_step_3.png
--- see 04_finishing_a_feature_branch_ticket_nb_step_4.png
--- see 04_finishing_a_feature_branch_ticket_nb_step_5.png
--- see 04_finishing_a_feature_branch_ticket_nb_step_6.png 
-->

####5 -  Start a release branch (05_create_a_release_branch)
Make sure you are on the "develop" branch.
You will have to name your "release branch" e.g. version 1.0.0

The version is very, very important. It will help you know what is the version of your application that will be deployed for instance (correcting bugs, updating stuff...)

For the version, think of WordPress for instance, it is a good source of inspiration even for the name of your version.
https://wordpress.org/news/category/releases/

####6 -  Finish a release branch (06_finish_a_release_branch)

Tagging you release is optional but you better tag it. Remember that will be a milestone in your development history.
Let's you can indicate a quick description of your commit with help of the tickets for instance e.g. This is the version 1.0.1 for my project including tickets #9575673, #9575674 Fix: The number in the loop in index.php; Comment the first version of variable paragraph in index.php | Enhancement: The management of accents in index.php | Update: Updated the readme.txt file.

 
####7 -  Create and Finish a Hotfix  (07_create_finish_a_hotfix)

Make sure you are on the "develop" branch
Then Click on the Gitflow icon and select e.g. update on the readme source
Change made in feature #9575676
Tagging you release is optional but you better tag it. Remember that will be a milestone in your development history.


This is the version 1.0.1 for my project including tickets #9575673, #9575674 Fix: The number in the loop in index.php; Comment the first version of variable paragraph in index.php | Enhancement: The management of accents in index.php | Update: Updated the readme.txt file.

It is always good to tag your Hotfix e.g. Hotfix 1 #9575675 Update: various updates in readme file







