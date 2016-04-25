# Loopback Reference

## Getting Started

To get started with a JSON API with loopback run:

```
hub clone tiy-tn-fee-2016-spring/base-api <project-name>
cd <project-name>
npm install
git remote remove origin
```

This will pull in the base API configured for local development and deployment to heroku.
It also includes basic support for Login and an `end-user` model.
The `git remote remove origin` removes the link to the shared repository so you can have your own version just for this project.

> Remember to switch to the `develop` branch!

## Generating Models

Next, you will want to generate some models.
The command to generate new models is:

```bash
slc loopback:model
```
