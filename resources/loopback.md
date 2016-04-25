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
The `git remote remove origin` removes the link to the shared repository so we can have our own version just for this project.

> Remember to switch to the `develop` branch!

## Generating Models

Next, we will want to generate some models.
The command to generate new models is:

```bash
slc loopback:model
```

This will start a wizard with a few steps:

1. Model Name: This is the name of the model. It should be all lowercase with `-` between words
2. Data Source: Where to save the data to. Loopback allows multiple datasources, but we'll just use the one called `db`. This will be a memory store in development and will use a full database on Heroku.
3. Base Class: This sets up what to extend behavior from. Here we'll use `PersistedModel` to make sure our model has full CRUD (Create, Read, Update, Delete) support
4. Expose via REST API: This says if our model is available over the API. Pick `Y` for `yes`
5. Custom plural form: This is useful for words where we need a special plural form (ex. "goose" vs "geese"), leave this blank unless we need it
6. Common model or server only: This allows the model to be used from client side Javascript served by Loopback. That doesn't matter in our case, but pick common.
7. Properties: This sets up the attributes for our model (not the relationships)
  - Name: Name of the new attribute. It should be all lowercase with `-` between words
  - Property Type: What data type to store the data in, (we usually use just `string`, `number`, or `boolean`)
  - Required: Should we be able to save this with an empty version of this field?
  - Default Value: Leave this blank unless we know we want something different

## Generating Relationships

Once we have our models defined, we can define our relationships using:

```bash
slc loopback:relation
```

The relation wizard is a bit harder to follow:

1. Model From: What model do we want to add the relationship to?
2. Relation Type: Should this be a `HasMany` or `BelongsTo` relationship?
3. Model To: What model should we relate to?
4. Property Name: (Usually this is default), if your client side is already created, you may need to modify this to match the existing properties
5. Custom Foreign Key: This changes the way the data is stored in the database (you likely won't need to change this)
6. Require a Through Model: Leave this as `no`
