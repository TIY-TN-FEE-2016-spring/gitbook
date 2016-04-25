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

This will start a wizard with a few steps:

1. Model Name: This is the name of the model. It should be all lowercase with `-` between words
2. Data Source: Where to save the data to. Loopback allows multiple datasources, but we'll just use the one called `db`. This will be a memory store in development and will use a full database on Heroku.
3. Base Class: This sets up what to extend behavior from. Here we'll use `PersistedModel` to make sure our model has full CRUD (Create, Read, Update, Delete) support
4. Expose via REST API: This says if our model is available over the API. Pick `Y` for `yes`
5. Custom plural form: This is useful for words where you need a special plural form (ex. "goose" vs "geese"), leave this blank unless you need it
6. Common model or server only: This allows the model to be used from client side Javascript served by Loopback. That doesn't matter in our case, but pick common.
7. Properties: This sets up the attributes for you model (not the relationships)
  - Name: Name of the new attribute. It should be all lowercase with `-` between words
  - Property Type: What data type to store the data in, (we usually use just `string`, `number`, or `boolean`)
  - Required: Should you be able to save this with an empty version of this field?
  - Default Value: Leave this blank unless you know you want something different
