Common Git Commands
###################

Branch Management
=================

Create a branch, set the upstream to it and switch to the new branch. Name
branches using some patterm like {user initials}/{branch name}

..  code:: shell

    $ git checkout -t -b {branch-name}

Switch to a branch

..  code:: shell

    $ git checkout {branch-name}

List all branches and upstreams

..  code:: shell

    $ git branch -vv

Once a branch has been merged into main, delete the feature branch

..  code:: shell

    $ git branch -D {branch-name}

2. Pushing and Pulling
======================

Pull the remote main into the local main, without changing the current branch

..  code:: shell

    $ git fetch origin main:main

Push current work to remote, likely triggering tests 

..  code:: shell

    $ git push origin

Update local branch with remote of the same branch name

..  code:: shell

    $ git pull

3. Committing
=============

Add everything currently under work and new files

..  code:: shell

    $ git add -A .
    $ git commit -m "message"


4. Merging the Feature into Main
================================

This is a bit of wizardry! I found it in an article `Git for Trunk Based
Development <https://medium.com/@elischleifer/minimum-viable-git-for-trunk-based-development-81a5da7a77a7>`_:

Step 1: Squash all local commits

..  code:: shell

    $ git reset --soft $(git merge-base HEAD main) &&
      git commit -am "" --allow-empty-message

Step 2: Rebase

..  code:: shell

    $ git rebase main

All of these commands track along the **git** timeline. It will help to see that
timeline and how it flows. That will come in the next note: 



    
..
