Git feature branch workflow 
using pull request as code review mechanism
git, git workflow, code review, pull request

###Git Workflow
* one
* two
* three
* four


###Reference
* [https://www.atlassian.com/git/tutorials/comparing-workflows](https://www.atlassian.com/git/tutorials/comparing-workflows)






Feature branch workflow

### Set up your local directory
sakthipriyan@Sakthi-Lap:temp$ mkdir test-feature-branch
sakthipriyan@Sakthi-Lap:temp$ cd test-feature-branch/
sakthipriyan@Sakthi-Lap:test-feature-branch$ git init
Initialized empty Git repository in /home/sakthipriyan/temp/test-feature-branch/.git/
sakthipriyan@Sakthi-Lap:test-feature-branch$ git remote add origin git@bitbucket.org:sakthi_priyan/test-feature-branch.git

### Create your first file, commit, and push
sakthipriyan@Sakthi-Lap:test-feature-branch$ echo "Read me file" >  README.md
sakthipriyan@Sakthi-Lap:test-feature-branch$ git add README.md
sakthipriyan@Sakthi-Lap:test-feature-branch$ git commit-m 'Initial commit with readme'
[master (root-commit) 12037d0] Initial commit with readme
 1 file changed, 1 insertion(+)
 create mode 100644 README.md
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push -u origin master
Counting objects: 3, done.
Writing objects: 100% (3/3), 243 bytes, done.
Total 3 (delta 0), reused 0 (delta 0)
To git@bitbucket.org:sakthi_priyan/test-feature-branch.git
 * [new branch]      master -> master
Branch master set up to track remote branch master from origin.

### Work on a new feature
sakthipriyan@Sakthi-Lap:test-feature-branch$ git checkout -b newfeature
Switched to a new branch 'newfeature'
sakthipriyan@Sakthi-Lap:test-feature-branch$ nano README.md 
sakthipriyan@Sakthi-Lap:test-feature-branch$ git add README.md
sakthipriyan@Sakthi-Lap:test-feature-branch$ git commit -m "Updated read me file"
[newfeature e4f9416] Updated read me file
 1 file changed, 1 insertion(+), 1 deletion(-)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push -u origin newfeature
Counting objects: 5, done.
Writing objects: 100% (3/3), 278 bytes, done.
Total 3 (delta 0), reused 0 (delta 0)
To git@bitbucket.org:sakthi_priyan/test-feature-branch.git
 * [new branch]      newfeature -> newfeature
Branch newfeature set up to track remote branch newfeature from origin.

Developer can continue working on the code changes with back up copy in server.

Once work is ready for review/merge, she can raise a pull request from bitbucket Web ui.
She can add description to give details about the changes and list of reviewers to review the changes.
Close branch should be checked as it should be deleted when the branch is merged back to master.

Now reviewer can see the pull request and start reviewing the code.
She can comment on each line of the code change to get more clarity or feedback to improve the code. Say, if reviewer ask for specific change to be made. Developer has to make the change and push it to the bitbucket. Same pull request will automatically show the new commit.

If the reviewer is okay with the new code, she can merge it to the master and close the source branch.

Now feature branch is  is actually 


sakthipriyan@Sakthi-Lap:test-feature-branch$ nano README.md 
sakthipriyan@Sakthi-Lap:test-feature-branch$ git ca "Added more content to README.md"
[newfeature c2d2763] Added more content to README.md
 1 file changed, 2 insertions(+), 1 deletion(-)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push
Counting objects: 5, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 321 bytes, done.
Total 3 (delta 0), reused 0 (delta 0)
To git@bitbucket.org:sakthi_priyan/test-feature-branch.git
   e4f9416..c2d2763  newfeature -> newfeature
sakthipriyan@Sakthi-Lap:test-feature-branch$ 
sakthipriyan@Sakthi-Lap:test-feature-branch$ 
sakthipriyan@Sakthi-Lap:test-feature-branch$ git st
# On branch newfeature
nothing to commit (working directory clean)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git fetch
remote: Counting objects: 1, done.
remote: Total 1 (delta 0), reused 0 (delta 0)
Unpacking objects: 100% (1/1), done.
From bitbucket.org:sakthi_priyan/test-feature-branch
   12037d0..0a51d55  master     -> origin/master
sakthipriyan@Sakthi-Lap:test-feature-branch$ git st
# On branch newfeature
nothing to commit (working directory clean)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git checkout master
Switched to branch 'master'
Your branch is behind 'origin/master' by 3 commits, and can be fast-forwarded.
sakthipriyan@Sakthi-Lap:test-feature-branch$ git pull
Updating 12037d0..0a51d55
Fast-forward
 README.md |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git branch -D newfeature 
Deleted branch newfeature (was c2d2763).
sakthipriyan@Sakthi-Lap:test-feature-branch$ 









Updated Read me file.
<<<<<<< HEAD
Adding more contents to the file.
Adding more number of lines to the README.md
=======
Adding more content
to the file.

>>>>>>> master







sakthipriyan@Sakthi-Lap:test-feature-branch$ git checkout -b improve-readme
Switched to a new branch 'improve-readme'
sakthipriyan@Sakthi-Lap:test-feature-branch$ ls
README.md
sakthipriyan@Sakthi-Lap:test-feature-branch$ nano README.md 
sakthipriyan@Sakthi-Lap:test-feature-branch$ git commit -a -m "Updated the README.md again"
[improve-readme c4294ae] Updated the README.md again
 1 file changed, 2 insertions(+), 1 deletion(-)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push -u orgin 
fatal: 'orgin' does not appear to be a git repository
fatal: The remote end hung up unexpectedly
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push -u origin 
Branch master set up to track remote branch master from origin.
Everything up-to-date
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push -u origin  improve-readme
Counting objects: 5, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 344 bytes, done.
Total 3 (delta 0), reused 0 (delta 0)
To git@bitbucket.org:sakthi_priyan/test-feature-branch.git
 * [new branch]      improve-readme -> improve-readme
Branch improve-readme set up to track remote branch improve-readme from origin.
sakthipriyan@Sakthi-Lap:test-feature-branch$ git status
# On branch improve-readme
nothing to commit (working directory clean)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git checkout master
Switched to branch 'master'
sakthipriyan@Sakthi-Lap:test-feature-branch$ git pull
remote: Counting objects: 3, done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 0), reused 0 (delta 0)
Unpacking objects: 100% (3/3), done.
From bitbucket.org:sakthi_priyan/test-feature-branch
   0a51d55..f808299  master     -> origin/master
Updating 0a51d55..f808299
Fast-forward
 README.md |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git checkout improve-readme 
Switched to branch 'improve-readme'
sakthipriyan@Sakthi-Lap:test-feature-branch$ git merge master
Auto-merging README.md
CONFLICT (content): Merge conflict in README.md
Automatic merge failed; fix conflicts and then commit the result.
sakthipriyan@Sakthi-Lap:test-feature-branch$ git status
# On branch improve-readme
# Unmerged paths:
#   (use "git add/rm <file>..." as appropriate to mark resolution)
#
#	both modified:      README.md
#
no changes added to commit (use "git add" and/or "git commit -a")
sakthipriyan@Sakthi-Lap:test-feature-branch$ nano README.md 
sakthipriyan@Sakthi-Lap:test-feature-branch$ git add README.md
sakthipriyan@Sakthi-Lap:test-feature-branch$ git status
# On branch improve-readme
nothing to commit (working directory clean)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push
Everything up-to-date
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push origin improve-readme 
Everything up-to-date
sakthipriyan@Sakthi-Lap:test-feature-branch$ git checkout mas
error: pathspec 'mas' did not match any file(s) known to git.
sakthipriyan@Sakthi-Lap:test-feature-branch$ git checkout master 
Switched to branch 'master'
sakthipriyan@Sakthi-Lap:test-feature-branch$ git status
# On branch master
nothing to commit (working directory clean)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git checkout improve-readme 
Switched to branch 'improve-readme'
sakthipriyan@Sakthi-Lap:test-feature-branch$ git status
# On branch improve-readme
nothing to commit (working directory clean)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git pull
Already up-to-date.
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push
Everything up-to-date
sakthipriyan@Sakthi-Lap:test-feature-branch$ cat README.md 
Updated Read me file.
Adding more contents to the file.
Adding more number of lines to the README.md
sakthipriyan@Sakthi-Lap:test-feature-branch$ git commit --amend 
[improve-readme e23ce36] Updated the README.md againn
 1 file changed, 2 insertions(+), 1 deletion(-)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push
To git@bitbucket.org:sakthi_priyan/test-feature-branch.git
 ! [rejected]        improve-readme -> improve-readme (non-fast-forward)
error: failed to push some refs to 'git@bitbucket.org:sakthi_priyan/test-feature-branch.git'
To prevent you from losing history, non-fast-forward updates were rejected
Merge the remote changes (e.g. 'git pull') before pushing again.  See the
'Note about fast-forwards' section of 'git push --help' for details.
sakthipriyan@Sakthi-Lap:test-feature-branch$ git pull
Merge made by the 'recursive' strategy.
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push
Counting objects: 2, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (2/2), 386 bytes, done.
Total 2 (delta 1), reused 0 (delta 0)
To git@bitbucket.org:sakthi_priyan/test-feature-branch.git
   c4294ae..66cbd53  improve-readme -> improve-readme
sakthipriyan@Sakthi-Lap:test-feature-branch$ git log
commit 66cbd536eec8214c971bd5eb802b0fad3d273e0d
Merge: e23ce36 c4294ae
Author: Sakthi Priyan H <sakthipriyan@crayondata.com>
Date:   Fri Apr 24 15:25:38 2015 +0530

    Merge branch 'improve-readme' of bitbucket.org:sakthi_priyan/test-feature-branch into improve-readme

commit e23ce366cb8a23d4021317eebd3651c4ccb5f415
Author: Sakthi Priyan H <sakthipriyan@crayondata.com>
Date:   Fri Apr 24 15:14:14 2015 +0530

    Updated the README.md againn

commit c4294ae08946fbe89dc1a19d05deb21dc893858d
Author: Sakthi Priyan H <sakthipriyan@crayondata.com>
Date:   Fri Apr 24 15:14:14 2015 +0530

    Updated the README.md again

commit 0a51d55dad970b187832d7ae73a1e7c76440da48
Merge: 12037d0 c2d2763
Author: syed_focus <syed@crayondata.com>
Date:   Fri Apr 24 12:06:03 2015 +0550

    Merged in newfeature (pull request #1)
    
    Updated read me file

commit c2d276302f092b492ca5204336eaa21cc5f346a9
Author: Sakthi Priyan H <sakthipriyan@crayondata.com>
Date:   Fri Apr 24 12:01:55 2015 +0530

    Added more content to README.md

commit e4f9416a843e675fad035de73a5e8435d4c8e666
Author: Sakthi Priyan H <sakthipriyan@crayondata.com>
Date:   Fri Apr 24 11:50:06 2015 +0530

    Updated read me file

commit 12037d05e167c299224fa2cbec6b200339f70d9a
Author: Sakthi Priyan H <sakthipriyan@crayondata.com>
Date:   Fri Apr 24 11:48:54 2015 +0530

    Initial commit with readme
sakthipriyan@Sakthi-Lap:test-feature-branch$ git checkout master
Switched to branch 'master'
sakthipriyan@Sakthi-Lap:test-feature-branch$ git merge --no-ff -m 'Merged in improve-readme (pull request #2)' remotes/origin/improve-readme
Auto-merging README.md
CONFLICT (content): Merge conflict in README.md
Automatic merge failed; fix conflicts and then commit the result.
sakthipriyan@Sakthi-Lap:test-feature-branch$ nano README.md 
sakthipriyan@Sakthi-Lap:test-feature-branch$ git st
# On branch master
# Unmerged paths:
#   (use "git add/rm <file>..." as appropriate to mark resolution)
#
#	both modified:      README.md
#
no changes added to commit (use "git add" and/or "git commit -a")
sakthipriyan@Sakthi-Lap:test-feature-branch$ git commit -a README.md
fatal: Paths with -a does not make sense.
sakthipriyan@Sakthi-Lap:test-feature-branch$ git commit README.md -m "Merged with master"
fatal: cannot do a partial commit during a merge.
sakthipriyan@Sakthi-Lap:test-feature-branch$ git status
# On branch master
# Unmerged paths:
#   (use "git add/rm <file>..." as appropriate to mark resolution)
#
#	both modified:      README.md
#
no changes added to commit (use "git add" and/or "git commit -a")
sakthipriyan@Sakthi-Lap:test-feature-branch$ git add README.md
sakthipriyan@Sakthi-Lap:test-feature-branch$ git status
# On branch master
# Changes to be committed:
#
#	modified:   README.md
#
sakthipriyan@Sakthi-Lap:test-feature-branch$ git commit -m "Merged with master"
[master 53d6416] Merged with master
sakthipriyan@Sakthi-Lap:test-feature-branch$ git status
# On branch master
# Your branch is ahead of 'origin/master' by 4 commits.
#
nothing to commit (working directory clean)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push
Counting objects: 1, done.
Writing objects: 100% (1/1), 227 bytes, done.
Total 1 (delta 0), reused 0 (delta 0)
To git@bitbucket.org:sakthi_priyan/test-feature-branch.git
   f808299..53d6416  master -> master
sakthipriyan@Sakthi-Lap:test-feature-branch$ git status
# On branch master
nothing to commit (working directory clean)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git branch -D 
FETCH_HEAD              HEAD                    improve-readme          master                  ORIG_HEAD               origin/improve-readme   origin/master           origin/newfeature 
sakthipriyan@Sakthi-Lap:test-feature-branch$ git branch -D improve-readme
Deleted branch improve-readme (was 66cbd53).
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push origin  improve-readme
error: src refspec improve-readme does not match any.
error: failed to push some refs to 'git@bitbucket.org:sakthi_priyan/test-feature-branch.git'
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push origin  :improve-readme
To git@bitbucket.org:sakthi_priyan/test-feature-branch.git
 - [deleted]         improve-readme
sakthipriyan@Sakthi-Lap:test-feature-branch$ 


sakthipriyan@Sakthi-Lap:test-feature-branch$ git checkout -b update-readme
Switched to a new branch 'update-readme'
sakthipriyan@Sakthi-Lap:test-feature-branch$ nano README.md 
sakthipriyan@Sakthi-Lap:test-feature-branch$ git status
# On branch update-readme
# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   README.md
#
no changes added to commit (use "git add" and/or "git commit -a")
sakthipriyan@Sakthi-Lap:test-feature-branch$ git cm "Updated readme file for speed"
# On branch update-readme
# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   README.md
#
no changes added to commit (use "git add" and/or "git commit -a")
sakthipriyan@Sakthi-Lap:test-feature-branch$ git ca "Updated readme file for speed"
[update-readme 065136d] Updated readme file for speed
 1 file changed, 1 insertion(+)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push -u 
To git@bitbucket.org:sakthi_priyan/test-feature-branch.git
 ! [rejected]        master -> master (non-fast-forward)
error: failed to push some refs to 'git@bitbucket.org:sakthi_priyan/test-feature-branch.git'
To prevent you from losing history, non-fast-forward updates were rejected
Merge the remote changes (e.g. 'git pull') before pushing again.  See the
'Note about fast-forwards' section of 'git push --help' for details.
sakthipriyan@Sakthi-Lap:test-feature-branch$ git status
# On branch update-readme
nothing to commit (working directory clean)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push -u origin update-readme
Counting objects: 22, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (14/14), done.
Writing objects: 100% (22/22), 2.17 KiB, done.
Total 22 (delta 3), reused 0 (delta 0)
To git@bitbucket.org:sakthi_priyan/test-feature-branch.git
 * [new branch]      update-readme -> update-readme
Branch update-readme set up to track remote branch update-readme from origin.
sakthipriyan@Sakthi-Lap:test-feature-branch$ git st
# On branch update-readme
nothing to commit (working directory clean)
sakthipriyan@Sakthi-Lap:test-feature-branch$ git checkout master 
Switched to branch 'master'
sakthipriyan@Sakthi-Lap:test-feature-branch$ git branch -D 
FETCH_HEAD             HEAD                   master                 ORIG_HEAD              origin/master          origin/newfeature      origin/update-readme   update-readme          
sakthipriyan@Sakthi-Lap:test-feature-branch$ git branch -D 
FETCH_HEAD             HEAD                   master                 ORIG_HEAD              origin/master          origin/newfeature      origin/update-readme   update-readme          
sakthipriyan@Sakthi-Lap:test-feature-branch$ git branch -D update-readme 
Deleted branch update-readme (was 065136d).
sakthipriyan@Sakthi-Lap:test-feature-branch$ git push origin :update-readme 
To git@bitbucket.org:sakthi_priyan/test-feature-branch.git
 - [deleted]         update-readme
sakthipriyan@Sakthi-Lap:test-feature-branch$ git branch 
FETCH_HEAD          HEAD                master              ORIG_HEAD           origin/master       origin/newfeature   
sakthipriyan@Sakthi-Lap:test-feature-branch$ git remote prune origin
Pruning origin
URL: git@bitbucket.org:sakthi_priyan/test-feature-branch.git
 * [pruned] origin/newfeature














https://www.atlassian.com/git/tutorials/comparing-workflows/centralized-workflow
http://makandracards.com/makandra/621-git-delete-a-branch-local-or-remote.
http://git-scm.com/book/en/v2/Git-Branching-Branch-Management




yed@syed-HP-ProBook-440-G1:~$ mkdir -p  workspace/sakthi
syed@syed-HP-ProBook-440-G1:~$ cd workspace/sakthi/
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi$ git clone git@bitbucket.org:sakthi_priyan/test-feature-branch.git
Cloning into 'test-feature-branch'...
remote: Counting objects: 10, done.
remote: Compressing objects: 100% (5/5), done.
remote: Total 10 (delta 0), reused 0 (delta 0)
Receiving objects: 100% (10/10), done.
Checking connectivity... done.
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi$ ll
total 12
drwxrwxr-x  3 syed syed 4096 Apr 24 15:11 ./
drwxrwxrwx 24 syed syed 4096 Apr 24 15:11 ../
drwxrwxr-x  3 syed syed 4096 Apr 24 15:11 test-feature-branch/
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi$ cd test-feature-branch/
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ l
























syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ ll
total 16
drwxrwxr-x 3 syed syed 4096 Apr 24 15:11 ./
drwxrwxr-x 3 syed syed 4096 Apr 24 15:11 ../
drwxrwxr-x 8 syed syed 4096 Apr 24 15:11 .git/
-rw-rw-r-- 1 syed syed   55 Apr 24 15:11 README.md
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ vim README.md 
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git status 
On branch master
Your branch is up-to-date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git commit -m "README.md modified"
On branch master
Your branch is up-to-date with 'origin/master'.

Changes not staged for commit:
	modified:   README.md

no changes added to commit
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git status 
On branch master
Your branch is up-to-date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git add .
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git commit -m "README.md modified"
[master f808299] README.md modified
 1 file changed, 3 insertions(+), 1 deletion(-)
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git status 
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working directory clean
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git push
warning: push.default is unset; its implicit value is changing in
Git 2.0 from 'matching' to 'simple'. To squelch this message
and maintain the current behavior after the default changes, use:

  git config --global push.default matching

To squelch this message and adopt the new behavior now, use:

  git config --global push.default simple

When push.default is set to 'matching', git will push local branches
to the remote branches that already exist with the same name.

In Git 2.0, Git will default to the more conservative 'simple'
behavior, which only pushes the current branch to the corresponding
remote branch that 'git pull' uses to update the current branch.

See 'git help config' and search for 'push.default' for further information.
(the 'simple' mode was introduced in Git 1.7.11. Use the similar mode
'current' instead of 'simple' if you sometimes use older versions of Git)

Counting objects: 5, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 299 bytes | 0 bytes/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To git@bitbucket.org:sakthi_priyan/test-feature-branch.git
   0a51d55..f808299  master -> master
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ 
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git status 
On branch master
Your branch is up-to-date with 'origin/master'.

nothing to commit, working directory clean
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git pull 



































syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git pull 
remote: Counting objects: 6, done.
remote: Compressing objects: 100% (5/5), done.
remote: Total 6 (delta 2), reused 0 (delta 0)
Unpacking objects: 100% (6/6), done.
From bitbucket.org:sakthi_priyan/test-feature-branch
   f808299..53d6416  master     -> origin/master
Updating f808299..53d6416
Fast-forward
 README.md | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ vim README.md 
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git st
On branch master
Your branch is up-to-date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git add .
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git commit -m "README.md modified"
[master 2fd5c1a] README.md modified
 1 file changed, 2 insertions(+), 1 deletion(-)
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git st
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working directory clean
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git push 
warning: push.default is unset; its implicit value is changing in
Git 2.0 from 'matching' to 'simple'. To squelch this message
and maintain the current behavior after the default changes, use:

  git config --global push.default matching

To squelch this message and adopt the new behavior now, use:

  git config --global push.default simple

When push.default is set to 'matching', git will push local branches
to the remote branches that already exist with the same name.

In Git 2.0, Git will default to the more conservative 'simple'
behavior, which only pushes the current branch to the corresponding
remote branch that 'git pull' uses to update the current branch.

See 'git help config' and search for 'push.default' for further information.
(the 'simple' mode was introduced in Git 1.7.11. Use the similar mode
'current' instead of 'simple' if you sometimes use older versions of Git)

Counting objects: 5, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 277 bytes | 0 bytes/s, done.
Total 3 (delta 1), reused 0 (delta 0)
To git@bitbucket.org:sakthi_priyan/test-feature-branch.git
   53d6416..2fd5c1a  master -> master
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ 
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git checkout master
Already on 'master'
Your branch is up-to-date with 'origin/master'.
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git merge --no-ff -m 'Merged in update-readme (pull request #3)' remotes/origin/update-readme
merge: remotes/origin/update-readme - not something we can merge
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git pull
remote: Counting objects: 3, done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 1), reused 0 (delta 0)
Unpacking objects: 100% (3/3), done.
From bitbucket.org:sakthi_priyan/test-feature-branch
 * [new branch]      update-readme -> origin/update-readme
Already up-to-date.
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git merge --no-ff -m 'Merged in update-readme (pull request #3)' remotes/origin/update-readme
Auto-merging README.md
CONFLICT (content): Merge conflict in README.md
Automatic merge failed; fix conflicts and then commit the result.
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git st
On branch master
Your branch is up-to-date with 'origin/master'.

You have unmerged paths.
  (fix conflicts and run "git commit")

Unmerged paths:
  (use "git add <file>..." to mark resolution)

	both modified:      README.md

no changes added to commit (use "git add" and/or "git commit -a")
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ vim README.md 
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ vim README.md 
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git st
On branch master
Your branch is up-to-date with 'origin/master'.

You have unmerged paths.
  (fix conflicts and run "git commit")

Unmerged paths:
  (use "git add <file>..." to mark resolution)

	both modified:      README.md

no changes added to commit (use "git add" and/or "git commit -a")
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git add .
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git commit -m "modified readme.md"
[master be6d40b] modified readme.md
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ git ps
warning: push.default is unset; its implicit value is changing in
Git 2.0 from 'matching' to 'simple'. To squelch this message
and maintain the current behavior after the default changes, use:

  git config --global push.default matching

To squelch this message and adopt the new behavior now, use:

  git config --global push.default simple

When push.default is set to 'matching', git will push local branches
to the remote branches that already exist with the same name.

In Git 2.0, Git will default to the more conservative 'simple'
behavior, which only pushes the current branch to the corresponding
remote branch that 'git pull' uses to update the current branch.

See 'git help config' and search for 'push.default' for further information.
(the 'simple' mode was introduced in Git 1.7.11. Use the similar mode
'current' instead of 'simple' if you sometimes use older versions of Git)

Counting objects: 1, done.
Writing objects: 100% (1/1), 213 bytes | 0 bytes/s, done.
Total 1 (delta 0), reused 0 (delta 0)
To git@bitbucket.org:sakthi_priyan/test-feature-branch.git
   2fd5c1a..be6d40b  master -> master
syed@syed-HP-ProBook-440-G1:~/workspace/sakthi/test-feature-branch$ 