# Homework Process

1. `mkdir <homework name>` - Make a new directory for the homework
2. `cd <homework name>` - Move into the new directory
3. `git init` - Initialize project as a local git repo
4. `hub create` - Create empty repo on Github
5. `atom .` - Open project in Atom editor
6. Create boilerplate files in our editor (usually some HTML and CSS)
7. `git add .` - Stages all changes for the current directory
8. `git commit -m "Starting assignment"` - Commits boilerplate
9. `git push origin master` - creates a branch on Github called `master` and sends boilerplate code to `Github`
10. `git checkout -b develop` - creates a local develop branch starting with just the boilerplate commit
11. Make one small change
12. `git add .` - Stages all changes for the current directory
13. `git commit -m "Your message of what you've done"` - Commits new changes to local `develop` branch
14. `git push origin develop` -  creates a branch on Github called `develop` and sends local `develop` commits to `develop` on Github
15. `hub pull-request -m "Turning in assignment"` - Creates a pull request on Github from `develop` over to `master`
  - The terminal will show you a link to your pull request
16. Submit link to pull request to assignment on online.theironyard.com
17. Work on a checkpoint or feature
  - Finish a checkpoint
  - Get to an issue that you need review on
18. `git add .` - Stages all changes for the current directory
19. `git commit -m "Your message of what you've done"` - Commits new changes to local `develop` branch
20. `git push` - Sends commits from all local branches that have places to branches on Github
21. Repeat 17-20 until complete
22. DM Ryan or Kate on slack for assignment review
