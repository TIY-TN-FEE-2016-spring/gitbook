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

## Application Template/Route/Controller
