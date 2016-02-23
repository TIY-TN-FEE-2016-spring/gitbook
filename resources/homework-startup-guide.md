# Homework Preflight Checklist

When starting on new homework assignments things can get a bit tough.
These notes will not tell you the exact commands that you will need to run, but it will at least list out the different steps so you know what you are missing.
These steps can be seen in this video: https://vimeo.com/user29630009/review/143529884/9d8ab4c348

1. Create a new issue in the [class assignments repo](https://github.com/TIY-TN-FEE-2016-spring/assignments)
    * Create todos for all listed requirements
1. Create a new directory for the day's assignment named to match the folder name for the assignment you are working on.
2. Make sure that your shell is in the newly created folder
3. Initialize a new git repo in the assignment directory - `git init`
4. [Create boiler plate files needed for the assignment](project-structure.html)
5. Stage boilerplate files - `git add`
6. Commit boilerplate files - `git commit -m "Your commit message goes here"`
7. Create repository on Github - `hub create`
8. Push local git repo with boilerplate to new Github (should be your `master` branch) - `git push -u origin master`
9. Create and checkout new `develop` branch for new changes on top of the existing boilerplate - `git checkout -b develop`
10. Get to your first stopping point and save all files
11. Stage and commit changes to `develop` (`git add`, `git commit`)
12. Push `develop` branch to Github - `git push -u origin develop`
13. Make a new Pull Request from `develop` to `master` on your Github repository
14. Take the link for your Pull Request and add it as a comment in your issue created in step 1
15. Continue work, saving, staging, committing, and pushing your changes

Remember to update your todo checkboxes in your issue so that I can track your progress and see where we may have some things to work on for the next day!
Ever time you finish a todo, you should commit and push your changes.
If you have questions, reach out to me on Slack.
