# Ember Structure and Review

## Application - (`app/app.js`)

* You probably won't touch this, unless an addon tells you to
* "Like the global" - Holds all shared information
* Knows how to look up things like (routes, services, controllers, templates, components)
  - It's contains "registry"
* Everything!!!
* Holds the configuration
* It gets things started

## Resolver - (`app/resolver.js`)

* You probably won't touch this, unless an addon tells you to
* This actually does the lookup for things that the application asks for
* Figures out how to load (`application/template.hbs` vs `templates/application.hbs`)

## Router - (`app/router.js`)

* Maps the URL to what route should be loaded
* Deals with transitioning between routes

## Templates - (Pods - `**/template.hbs`, Not Pods - `templates/**.hbs`)

* Handlebars
* What the user sees
* Can be used to render components
* Can use helpers to modify data or add behavior

## Routes - (Pods - `**/route.js`, Not Pods - `routes/**.js`)

* Pull in the data that a template will need
  - `model` hook/method
    * Finds the data and sets it to `model` in the template/controller once it's done
    * Waits for promises to finish
  - `beforeModel` hook/method
    * Runs before the `model` hook
    * Can be used for things like Authentication and redirects

## Controller - (Pods - `**/controller.js`, Not Pods - `controllers/**.js`)

* Adds behvaior to a routed template
* What do we do with data once we have it?
* Actions for routed templates

## Component

* Standalone
* Reusable
* Only has access to the data provided
* Two parts
  - Template
  - Component Javascript
* Use component from a Handlebars file

## Component Javascript

* Manipulate data for this component
* Unique for each component instance
* Actions to handle things in component templates

## Services

* Share data or behavior across the entire application
* Must be injected using `Ember.inject.service` in the Route, Controller, or Component where you want to use it
* Only one instance throughout the app

## Application Template/Route/Controller

* Always loads
* Parent route to EVERYTHING

## Parent Routes/Templates

* `{{outlet}}` in a parent template describes where child routes/templates should render

## Ember Data

* Organizes data interactions
* Not required

## Ember Data Store

* Single source of truth for data
* Sorta like the "Application" for Ember Data
* Keeps out duplicates and keeps everyone informed of the latest and TRUSTED version

## Ember Data Adapters

* "Highway" between the app and the data source
* Figures out given a model name and request type what to do
  - Given JsonApiAdapter with `host`: `api.com`
    * ex ``this.store.findAll(`dog`)`` - makes a GET request to `api.com/dogs`
    * ex ``dog.save()`` - on a new `dog` model makes a POST request to `api.com/dogs`
    * ex ``dog.save()`` - on an existing `dog` model (id: `2`) makes a PATCH to `api.com/dogs/2`
* How to make the request
* Properties of Adapters
  - `host`: The base url to make requests to
  - `namespace`: Anything that comes before the model names AFTER the `host` (ex: `host`: `http://myapp.com`, `namespace`: `stuff`, would make requests to `http://myapp.com/stuff/dogs` when making a ``findAll(`dog`)`` request)

## Ember Data Serializer

* Translator

## Ember Data Model

* Describes the properties to sync
* Describes relationships
* Allows saving, deleting, etc

## Ember Simple Auth

* Used for user sessions and logging in/out

## Ember Simple Auth - Authenticator

* Responsible for making required requests for logging in and out
* Stores session information that is returned

## Ember Simple Auth - Authorizer

* Tells the server who we are once we are logged in
* Sends a session token with all API requests
* Needs to be set on on the ember data adapter using the Ember Simple Auth Mixin
