## Using GitFlow Workflow and SourceTree

<!-- DEPOT

#1001
  Add basic writing, formatting syntax, layout #1
  Add basic writing, formatting syntax, layout #2
  Add basic writing, formatting syntax, layout #3
  Add basic writing, formatting syntax, layout #4
#1002
#1003
https://help.github.com/articles/basic-writing-and-formatting-syntax/

# The largest heading
## The second largest heading
###### The smallest heading
-->


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



- 2 -  Initialize Gitflow for this repository (02_setup_the_gitflow_for_the_repository)
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


- 3 -  Create a feature branch in this repository (03_create_a_feature_branch)

Make sure you are on the "develop" branch.
I am starting a new feature branch

+ with no ticket
--- see 8_using_git_for_wp_create_a_feature_branch_step_1.png
--- see 8_using_git_for_wp_create_a_feature_branch_step_2.png
--- see 8_using_git_for_wp_create_a_feature_branch_step_3.png

+ with a ticket from trello or redmine of whatever is your project management tool

Let's say I have picked a ticket on my agile board. The ticket number is #9575673. This ticket consists of changing the readme of the project. You will create a feature branch with the ticket number e.g. #9575673 so you can make comfortably the changes that you want. When you are done, you will have to finish this feature branch.


--- words from the video
Make sure you are on the "develop" branch
Click on the Gitflow icon
Click on "Start a new feature"
Name your "feature branch"
Continue to work on your "feature branch"



- 4 -  Finish a feature branch in this repository (04_finishing_a_feature_branch_ticket_nb)

When you finished your work on this branch. It means that you want that your feature be "validated" by your PO. Concretely, your ticket will change from "In progress" to "Test by the PO" so it can enter into the acceptance phase or validation phase.

Finishing a feature branch means that you are going to merge the work you made on files into the "develop" branch. You may also at the same time delete the feature branch you are working on.

In the real world, do not forget to pull "develop" first, to avoid any merge conflict. If not, merge conflicts will arise probably.

--- see 04_finishing_a_feature_branch_ticket_nb_step_1.png
--- see 04_finishing_a_feature_branch_ticket_nb_step_2.png
--- see 04_finishing_a_feature_branch_ticket_nb_step_3.png
--- see 04_finishing_a_feature_branch_ticket_nb_step_4.png
--- see 04_finishing_a_feature_branch_ticket_nb_step_5.png
--- see 04_finishing_a_feature_branch_ticket_nb_step_6.png





--- words from the video
Once you have completed our feature, we can merge into the "develop" branch.
Click on the Gitflow icon
Click on "Finish feature"
Real world - pull "develop" first
Real world - look out for merge conflicts

- 5 -  Start a release branch (05_create_a_release_branch)
Make sure you are on the "develop" branch.
You will have to name your "release branch" e.g. version 1.0.0

The version is very, very important. It will help you know what is the version of your appliactipon that will be deployed for instance (correcting bugs, upadting stuff...)

For the version, think of WordPress for instance, it is a good source of inspiration even for the name of your version.
https://wordpress.org/news/category/releases/


--- words from the video
Make sure you are on the "develop" branch
Click on the Gitflow icon
Click on "Start a new release"
Commit any change if necessary


- 6 -  Finish a release branch (06_finish_a_release_branch)

Tagging you release is optional but you better tag it. Remember that will be a milestone in your development history.
Let's you can indicate a quick description of your commit with help of the tickets for instance e.g. This is the version 1.0.1 for my project including tickets #9575673, #9575674 Fix: The number in the loop in index.php; Comment the first version of variable paragraph in index.php | Enhancement: The management of accents in index.php | Update: Updated the readme.txt file.

 
- 7 -  Create and Finish a Hotfix  (07_create_finish_a_hotfix)

Make sure you are on the "develop" branch
Then Click on the Gitflow icON AND SELECT 
E.G. UPDATE README ! SOURCe
Change made in feature #9575676
Tagging you release is optional but you better tag it. Remember that will be a milestone in your development history.


This is the version 1.0.1 for my project including tickets #9575673, #9575674 Fix: The number in the loop in index.php; Comment the first version of variable paragraph in index.php | Enhancement: The management of accents in index.php | Update: Updated the readme.txt file.

Always it is good to tag your hotfix...
Eg Hotfix 1 #9575675 Update: various updates in readme file


! SOURCE
Change made in feature #9575676

--- words from the video
Make sure you are on the "release" branch
Click on the Gitflow icon
Click on "Finish release"
Tag your "release" branch
Finish the "release" branch, will merge the "release" branch into "master" and "develop"

! SOURCE



- Using Git for WP, feature branching with ticket system
--- https://fr.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow
--- https://confluence.atlassian.com/bitbucket/workflow-for-git-feature-branching-814201830.html
--- https://gafish.fr/git-gitflow-sourcetree/

You must add to your sourcetree, the gitflow icon it will save you a lot of time.


- Git Flow Part 2 - Using Git Flow in Source Tree Tutorial
https://www.youtube.com/watch?v=z53JJ7P78Vc

- Git Flow Part 1 - What is Git Flow
https://www.youtube.com/watch?v=6LhTe8Mz6jM

- Getting started with Git using SourceTree - Part 1: Version control
https://www.youtube.com/watch?v=UD7PV8auGLg



- git flow with sourcetree in 5 minutes
Very simple introduction, basic but effecient
https://www.youtube.com/watch?v=WCe_h-m9_8w

http://rogerdudler.github.io/git-guide/index.fr.html



cd /Users/brunoflaven/Documents/03_git/test-gitflow/

+ queques commandes
git status
add a new file
touch second-file.txt

git add second-file.txt
git commit -am changes

+ Je développe des fonctionnalités
<nom>  est la version de feature sur laquelle je vais travailler, par exemple le numero d'un tocket #530437

cd /Users/brunoflaven/Documents/03_git/test-gitflow/

- try_1
git checkout -b feature/530437 develop # je crée une feature version 530437 du nom du ticket sur la base de develop
git status # je verifie que je suis dans la version feature/530437
git checkout feature/530437 # je passe à la version de develop
git add <filename> # si vous rajoutez un fichier
git add * # rajoute tout 
git commit -m "change from ticket #530437 in feature/530437 branch"
git commit -m "change 3 from ticket #530437 in feature/530437 branch new file third-file.txt + add lines in second-file.txt"

- try_2
git checkout -b feature/567567675 develop # je crée une feature version 567567675 du nom du ticket sur la base de develop
git status # je verifie que je suis dans la version feature/567567675
git checkout feature/567567675 # je passe à la version de feature/567567675
git add * # rajoute tout 
git commit -m "change from ticket #567567675 in feature/567567675 branch"
git commit -m "change 2 from ticket #567567675 in feature/567567675 branch"
git merge feature/567567675 --no-ff
git branch -d feature/567567675

- try_3
git checkout -b feature/AZEA535343 develop # je crée une feature version AZEA535343 du nom du ticket sur la base de develop
git status # je verifie que je suis dans la version feature/AZEA535343
git checkout feature/AZEA535343 # je passe à la version de feature/AZEA535343
git add * # rajoute tout 
git commit -m "change 1 from ticket #AZEA535343 in feature/AZEA535343 branch"
git add * # rajoute tout 
git commit -m "change 2 from ticket #AZEA535343 in feature/AZEA535343 branch"
git merge feature/AZEA535343 --no-ff
git commit -m "change 3 from ticket #AZEA535343 in feature/AZEA535343 branch"
git merge feature/AZEA535343 --no-ff
git commit -m "change 4 from ticket #AZEA535343 in feature/AZEA535343 branch"
git branch -d feature/AZEA535343

git add third-file.txt # rajoute tout 
git commit -m "change 5 from ticket #AZEA535343 in feature/AZEA535343 branch"
git checkout develop # je passe à la version de develop
git branch -D feature/AZEA535343




+ ajout d'un changement dans un fichier
git add third-file.txt
git commit -m "change from ticket test-feature-ticket-#A12345"
git merge feature/test-feature-ticket-#A1234
git branch -d feature/test-feature-ticket-#A1234


+ ajout d'un changement dans un fichier
git add 6-file.txt
git commit -m "add file 6-file.txt"

+ ajout d'un changement dans un fichier 7-file.txt
git add *
git commit -am changes-test
git add 7-file.txt
git commit -m "add file 7-file.txt + change in file 6-file.txt"


git branch -d feature/test-feature-ticket-#A12345

git checkout develop # je passe à la version de develop

--- git merge feature/<nom> --no-ff
git merge feature/530437 --no-ff

git log
--- git branch -d feature/<nom>
git branch -d feature/530437

git merge my-bruno-branch-1-ticket-#4556465
git branch -d my-bruno-branch-1-ticket-#4556465
git branch -D my-bruno-branch-1-ticket-#4556465


$ git checkout -b myfeature develop
$ git checkout develop #Switched to branch 'develop'
$ git commit -m "change bf 3"

$ git merge --no-ff myfeature #Updating ea1b82a..05e9557 (Summary of changes)
$ git branch -d myfeature #Deleted branch myfeature (was 05e9557).
$ git push origin develop

git checkout develop




+ Kunena


--- git checkout -b [name_of_your_new_branch]
git checkout -b my-bruno-branch-1-ticket-#4556465
git add third-file.txt
git commit -m "remove third-file.txt"
git status
git add *
git status
git commit -m "add several files change 1"


Source: https://github.com/Kunena/Kunena-Forum/wiki/Create-a-new-branch-with-git-and-manage-branches

! source
https://readwrite.com/2013/10/02/github-for-beginners-part-2/
https://medium.com/flawless-app-stories/useful-git-commands-for-everyday-use-e1a4de64037d

https://fr.atlassian.com/git/tutorials/learn-git-with-bitbucket-cloud#create-the-repository


https://confluence.atlassian.com/bitbucketserver/basic-git-commands-776639767.html



+ GitFlow
Homebrew
https://danielkummer.github.io/git-flow-cheatsheet/


$ brew install git-flow-avh 

- GitFlow est un ensemble de règles simples qui se basent sur le fonctionnement par branche de Git.

git flow init : pour initialiser Git et GitFlow dans un projet.

! GIT FLOW FEATURE
--- git flow feature start <nom> # pour démarrer le développement d'une nouvelle fonctionnalité.
+ git flow feature start my-new-feature-2

git status
git add *
git commit -m "change for my-new-feature-2"


--- git flow feature finish <nom> # pour terminer le développement d'une nouvelle fonctionnalité.

+ git flow feature finish my-new-feature-2

+ git flow feature finish /my-new-feature-2
git branch -D my-new-feature-2




! GIT FLOW RELEASE
--- git flow release start <version> # pour démarrer le développement d'une nouvelle release.

+ git flow release start my-release-v-1.0.1

git status
git add *
git commit -m "change for my-release-v-1.0.1"


--- git flow release finish <nom> # pour terminer le développement d'une nouvelle release.

+ git flow release finish my-release-v-1.0.1

! GIT FLOW HOTFIX
git flow hotfix start <version> : pour démarrer le développement d'un nouveau hotfix.

git flow hotfix finish <nom> : pour terminer le développement d'un nouveau hotfix.

