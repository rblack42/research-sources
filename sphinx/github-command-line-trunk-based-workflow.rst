Github Command Line Trunk Based Workflow
########################################

1. set up a repo with a **main** branch
=======================================

..  code:: shell

    $ git init

2. Create a Feature Branch
==========================

..	code:: shell

    $ gh branch -c "feature/new-feature"
    $ gh checkout feature/new-feature

3. Work/Commit as usual
=======================

..  code:: shell

    $ git add .
    $ git commit -m "commit message describing changes"

4. Pull Changes fro other feature work

..  code:: shell

    $ gh checkout main
    $ git pull origin main
    $ gh checkout feature/new-feature

5. Optionally rebase the feature branch to main

..  code::

    $ git rebase origin.main

6. Push feature brabch to remote

..  code:: shell

    $ git push origin feature/new-feature

7. Create a pull request

..  code:: shell

    $ gh pr create --title "New feature implementation" --body "description of
    new feature changes"

8. Once review is approved, merge into main branch

..  code:: shell

    $ gh pr merge
