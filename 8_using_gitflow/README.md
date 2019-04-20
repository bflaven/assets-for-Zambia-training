<a id="top"></a>
## Using GitFlow Workflow and SourceTree <a href="../README.md">&#8592; Home</a>
 
**A quick presentation with screen captures of the GitFlow Workflow managed by SourceTree. A best practice whether you develop a WordPress plugin or need to version a final document.**



**<a href="#1_gitflow">1. Intro** &#8595;</a><br>
**<a href="#2_gitflow">2. How to set up the workflow Gitflow in a local repository ?** &#8595;</a><br>
**<a href="#3_gitflow">3. Initialize Gitflow for the repository** &#8595;</a><br>
**<a href="#4_gitflow">4. Create a feature branch in this repository** &#8595;</a><br>
**<a href="#5_gitflow">5. Finish a feature branch in this repository** &#8595;</a><br>
**<a href="#6_gitflow">6. Start a release branch** &#8595;</a><br>
**<a href="#7_gitflow">7. Finish a release branch** &#8595;</a><br>
**<a href="#8_gitflow">8. Create and Finish a Hotfix** &#8595;</a><br>
**<a href="#9_gitflow">9. Conclusion** &#8595;</a><br>
**<a href="#10_gitflow">10.Read more** &#8595;</a><br>

<a id="1_gitflow"></a>
## 1. Intro <a href="#top">&#8593;</a>
Even though, you are not a pure developer, you may be interested in benefit from a tool like Git to manage content version like for courses, presentations or any kind of educational materials for instance...etc..

You can even want to push the boundaries of Git and make the most of it by activating the Gitflow workflow. I will define later what is the Gitflow workflow.

In our article, the Gitflow workflow will be handle with the help of SourceTree.

With no doubt, you can use SourceTree from Atlassian. It is a very comprehensive software to manage your repositories and more over activate the Workflow Gitflow. You can first work on a local repository to familiarize with the most common commands.

After, this small training, you can add a real remote repository to append some commands to your knowledge.

**What is the workflow Gitflow?**

A Gitflow workflow is a Git workflow pattern or design published and popularized by Vincent Driessen. The main concept in the pattern is the notion of Branch. 

The Gitflow workflow defines a strict branch creation model designed around the delivery of the project. This provides a solid framework for managing larger projects.

**To summarize briefly, this Gitflow workflow is organized around 3 keywords.**

1. Feature
2. Release
3. Hotfix


**Quick definitions for these 3 keywords.**

These adjectives goes with branches.

Add some definitions of Feature, Feature, Hotfix for Gitflow workflow


**1. Feature branches:** Feature branches also make it easier for two or more developers to collaborate on the same feature, because each feature branch is a sandbox where the only changes are the changes necessary to get the new feature working. That makes it very easy to see and follow what each collaborator is doing.

**2. Release branches:** When it is time to make a release, a release branch is created off of develop: When the release is finished, the release branch is merged into master and into develop too, to make sure that any changes made in the release branch aren’t accidentally lost by new development.

**3. Hotfix branches:** are used to create emergency fixes. They are branched directly from a tagged release in the master branch, and when finished are merged back into both master and develop to make sure that the hotfix isn't accidentally lost when the next regular release occurs.


**My user story is very simple: I want to activate the Gitflow workflow on a local repository and discover through SourceTree the main actions attached to the keywords: Feature, Release, Hotfix.**

**In a second time, my user story will integrate a remote repository. I will open a remote repository on Github and synchronize it with my local repository via a Gitflow workflow.**

<a id="2_gitflow"></a>
## 2. How to set up the workflow Gitflow in a local repository ? <a href="#top">&#8593;</a>

We will see how to setup a local repository and activate the Gitflow workflow.

#### 2.1 - Initialize the repository 

Before anything, I will create a repository locally named _git-demo_ and add only 2 files inside this repository: _index.php, README.md_. 

For the moment, I am not adding any remote repository on Github for instance. The purpose will be only to manage the files locally and familiarize both with Gitflow workflow and SourceTree. 

<pre>
cd [your-path-to-your-git-demo-directory]
mkdir /git-demo/
cd /git-demo/
touch index.php
touch README.md
</pre>

I edited the files and add some content inside. I made the initial commit, it creates the "master". 

**As I created my directory locally, I choose "Add Existing Local Repository"**
![Initialize the repository - Step 1](01_setup_the_repository/using_gitflow_setup_repo_step_1.png)

**I chose the directory _git-demo_**
![Initialize the repository - Step 2](01_setup_the_repository/using_gitflow_setup_repo_step_2.png)

**I defined it the directory _git-demo_ as a git repository**
![Initialize the repository - Step 3](01_setup_the_repository/using_gitflow_setup_repo_step_3.png)

**A new shortcut is created _git-demo_**
![Initialize the repository - Step 4](01_setup_the_repository/using_gitflow_setup_repo_step_4.png)

**I made the initial commit with 2 files: index.php, README.md**
![Initialize the repository - Step 5](01_setup_the_repository/using_gitflow_setup_repo_step_5.png)

**For the moment, there is only 1 branch named _master_**
![Initialize the repository - Step 6](01_setup_the_repository/using_gitflow_setup_repo_step_6.png)

*The screen captures can be found in the directory 01_setup_the_repository of the github project*

<a id="3_gitflow"></a>
## 3. Initialize Gitflow for the repository <a href="#top">&#8593;</a>
I am ready to initialize Gitflow using the Gitflow icon. If you click on the icon, Sourcetree will offer. Keep the configuration as it is. As a result, you will have a “master” and a “develop” branch. These 2 branches both share the same files.

**I click on Gitflow icon and keep the configuration as it is for the repository**
![Initialize Gitflow for the repository - Step 1](02_setup_the_gitflow_for_the_repository/using_gitflow_setup_gitflow_repo_step_1.png)


**As a result of a initializing Gitflow, 2 branches _master_ and _develop_ are created**
![Initialize Gitflow for the repository - Step 2](02_setup_the_gitflow_for_the_repository/using_gitflow_setup_gitflow_repo_step_2.png)


#### Question : I Cannot find the Gitflow icon in the Toolbar's SourceTree ?
If you cannot find it in the Toolbar's SourceTree. By right-clicking on the Toolbar, you can add the Gitflow icon.

**Right-click on the toolbar and choose _Customize Toolbar..._**
![I Cannot find the Gitflow icon in the Toolbar's SourceTree ? - Step 1](02_setup_the_gitflow_for_the_repository/using_gitflow_missing_gitflow_icon_step_1.png)

**Drag the Gitflow icon into the toolbar**
![I Cannot find the Gitflow icon in the Toolbar's SourceTree ? - Step 1](02_setup_the_gitflow_for_the_repository/using_gitflow_missing_gitflow_icon_step_2.png)


One other advice, you can activate the output of the console history, it will probably help you to understand what are the real commands executed by the GUI.


 **Hide or Show the Command History**
![Hide or Show the Command History - Step 1](02_setup_the_gitflow_for_the_repository/using_gitflow_missing_command_history.png)

*All the screen captures can be found in the directory 02_setup_the_gitflow_for_the_repository of the Github project*

<a id="4_gitflow"></a>
## 4. Create a feature branch in this repository <a href="#top">&#8593;</a>

Make sure you are on the "develop" branch. I will start a new feature branch. But just hold on a second, think of the project's situation, when you are starting a project, you may have an idea about the tasks/items/features that are going done to achieve the project. In the real world, all these elements should be splitted into tickets. The ticket number is often used as name for the feature branch so you can easily remember what was the feature attached to this branch is about.

Whether you have or not a project management system e.g. Trello or Redmine, the best practice is to use an incremental version for each feature branch so you got a sense of development history.

This is example that I show below...

**Create a feature branch a ticket from Trello or Redmine of whatever is your project management tool**

Let's say I have picked a ticket on my agile board. The ticket number is #9575673. This ticket consists of changing the readme of the project. You will create a feature branch with the ticket number e.g. #9575673 so you can make comfortably the changes that you want. When you are done, you will have to finish this feature branch.

**I click on Gitflow icon and choose _Start a New Feature_**
![Create a feature branch with a ticket name - Step 1](03_create_a_feature_branch/using_gitflow_create_a_feature_branch_ticket_step_1.png)

**I gave to the feature branch the name of the ticket _#9575673_**
![Create a feature branch with a ticket name - Step 2](03_create_a_feature_branch/using_gitflow_create_a_feature_branch_ticket_step_2.png)

**A new feature branch named _#9575673_ appeared**
![Create a feature branch with a ticket name - Step 3](03_create_a_feature_branch/using_gitflow_create_a_feature_branch_ticket_step_3.png)

*All the screen captures can be found in the directory 03_create_a_feature_branch of the Github project*

<a id="5_gitflow"></a> <a href="#top">&#8593;</a>
## 5. Finish a feature branch in this repository

When you finished your work on this branch. It means that you want that your feature be "validated". Concretely, on your board,if you are doing Scrum or Kanban, you may change the status of your ticket from _In progress_ to _Testing_ so it can enter into the acceptance phase or validation phase.

**Finishing a feature branch means that you are going to merge the work you made on files into the "develop" branch. You may also at the same time delete the feature branch you are working on.**

*Just for your information, I am referring to the most common labels for columns in a Scrum Task Board: _To Do, In Progress, Testing, Done_*

*In the real world, there is maybe a missing column named _Peer Review_ or _To Verify_ in between the 2 columns _In Progress_, _Testing_ because often the code is reviewed by someone other than you*

*Again, in the real world, do not forget to pull "develop" first, to avoid any merge conflict. If not, merge conflicts will arise probably.*



**I made some change in the README.md**
![Finish a feature branch in this repository - Step 1](04_finishing_a_feature_branch/using_gitflow_finishing_a_feature_branch_ticket_nb_step_1.png)


**I committed them in the feature branch named _#9575673_**
![Finish a feature branch in this repository - Step 2](04_finishing_a_feature_branch/using_gitflow_finishing_a_feature_branch_ticket_nb_step_2.png)

**I click on Gitflow icon, choose _Finish Current_. By default, SourceTree is handling the management of the feature branch _#9575673_**
![Finish a feature branch in this repository - Step 4](04_finishing_a_feature_branch/using_gitflow_finishing_a_feature_branch_ticket_nb_step_4.png)


**Clicking on OK will merge feature branch into the "develop" branch. It will simultaneously delete the feature branch**
![Finish a feature branch in this repository - Step 5](04_finishing_a_feature_branch/using_gitflow_finishing_a_feature_branch_ticket_nb_step_5.png)


**The feature branch _#9575673_ has disappeared**
![Finish a feature branch in this repository - Step 6](04_finishing_a_feature_branch/using_gitflow_finishing_a_feature_branch_ticket_nb_step_6.png)

*All the screen captures can be found in the directory 04_finishing_a_feature_branch_ticket_nb of the Github project*

<a id="6_gitflow"></a>
## 6. Start a release branch <a href="#top">&#8593;</a>
**Make sure you are on the "develop" branch. Think of version number for your release as you will have to name your "release branch" e.g. _version 1.0.0_. Again SourceTree is assisting you when you click on Gitflow icon button.**

The version number is important. It will help you know what is the version of your application that will be deployed for instance (correcting bugs, updating stuff...)

For the version, think of WordPress for instance, it is a good source of inspiration even for the name of your version.
https://wordpress.org/news/category/releases/

**I click on Gitflow icon, choose _Start a New Release_**
![Start a release branch - Step 1](05_create_a_release_branch/05_create_a_release_branch_step_1.png)

**Type the version number, in our case it is _version 1.0.0_**
![Start a release branch - Step 2](05_create_a_release_branch/05_create_a_release_branch_step_2.png)
*SourceTree add automatically a _ instead of an empty space in the name version 1.0.0*

**A new version is available under the name _version 1.0.0_**
![Start a release branch - Step 3](05_create_a_release_branch/05_create_a_release_branch_step_3.png)

*All the screen captures can be found in the directory 05_create_a_release_branch of the Github project*

<a id="7_gitflow"></a>
## 7. Finish a release branch <a href="#top">&#8593;</a>

Tagging you release is optional but you better tag it. Remember that will be a milestone in your development history.
Let's you can indicate a quick description of your commit with help of the tickets for instance e.g. _This is the version 1.0.1 for my project including tickets #9575673, #9575674 Fix: The number in the loop in index.php; Comment the first version of variable paragraph in index.php | Enhancement: The management of accents in index.php | Update: Updated the readme.txt file._

*As you can see in the screen captures my release branch version is 1.0.1 even though the version was 1.0.0, it is only because when I made this captures set the release branch version 1.0.0 was already merged! Apologize for that.*

**I click on Gitflow icon, choose _Finish Current_. By default, SourceTree is handling the management of the release branch _version 1.0.1_**
![Finish a release branch - Step 1](06_finishing_a_release_branch/06_finishing_a_release_branch_step_1.png)


**The release branch _version 1.0.1_ is merged into the _develop_ branch**
![Finish a release branch - Step 3](06_finishing_a_release_branch/06_finishing_a_release_branch_step_3.png)


*The screen captures can be found in the directory 06_finish_a_release_branch of the Github project*

<a id="8_gitflow"></a>
## 8. Create and Finish a Hotfix <a href="#top">&#8593;</a>

Make sure you are on the "develop" branch then Click on the Gitflow icon and select e.g. update on the readme source. Note that SourceTree add automatically a _ instead of an empty space in the name of your Hotfix
Change made in feature #9575676
Tagging you release is optional but you better tag it. Remember that will be a milestone in your development history.

It is always good to tag your Hotfix e.g. Update readme #9575675

**I click on Gitflow icon in order to select the Hotfix feature**
![Create and Finish a Hotfix - Step 1](07_create_finish_a_hotfix/07_create_finish_a_hotfix_step_1.png)

**Type the name of your Hotfix _Update readme #9575675_**
![Create and Finish a Hotfix - Step 2](07_create_finish_a_hotfix/07_create_finish_a_hotfix_step_2.png)

**On the _develop_ branch to create the Hostfix Branch**
![Create and Finish a Hotfix - Step 3](07_create_finish_a_hotfix/07_create_finish_a_hotfix_step_3.png)

**SourceTree create the Hostfix Branch _Update readme #9575675_**
![Create and Finish a Hotfix - Step 4](07_create_finish_a_hotfix/07_create_finish_a_hotfix_step_4.png)

**I click on Gitflow icon in order to finish the Hotfix feature _Update readme #9575675_**
![Create and Finish a Hotfix - Step 5](07_create_finish_a_hotfix/07_create_finish_a_hotfix_step_5.png)

*The screen captures can be found in the directory 07_create_finish_a_hotfix of the Github project*

<a id="9_gitflow"></a>
## 9. Conclusion <a href="#top">&#8593;</a>
So here is a good step by step to introduce how to activate and use the Gitflow workflow with the help is of SourceTree. Using SourceTree is much more easy and convenient than doing it via the command-line but by the time you get familiar with Gitflow, you will probably jump to the console.

*Below some resources that may help you to go further.*

<a id="10_gitflow"></a>
## 10. Read more <a href="#top">&#8593;</a>

[A successful Git branching model by Vincent Driessen](https://nvie.com/posts/a-successful-git-branching-model/)


[Continuous delivery workflows with the branch-per-issue model](https://www.atlassian.com/continuous-delivery/principles/workflows-with-feature-branching-and-gitflow)


[Workflow for Git feature branching](https://confluence.atlassian.com/bitbucket/workflow-for-git-feature-branching-814201830.html)

[Git Flow Part 1 - What is Git Flow](https://www.youtube.com/watch?v=6LhTe8Mz6jM)

[Git Flow Part 2 - Using Git Flow in Source Tree Tutorial](https://www.youtube.com/watch?v=z53JJ7P78Vc)

[Getting started with Git using SourceTree - Part 1: Version control](https://www.youtube.com/watch?v=UD7PV8auGLg)


[GitHub For Beginners: Commit, Push And Go](https://readwrite.com/2013/10/02/github-for-beginners-part-2/)

[Useful git commands for everyday use!](https://medium.com/flawless-app-stories/useful-git-commands-for-everyday-use-e1a4de64037d)

[Basic Git commands](https://confluence.atlassian.com/bitbucketserver/basic-git-commands-776639767.html)

