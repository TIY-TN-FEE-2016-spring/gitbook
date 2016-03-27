# What are Views?

Views are a powerful programming technique that acts as a layer between the user and the data for an application.

In Javascript in the browser, Views are usually classes or objects that complete these things:

* Represent data to the user
* Translate user interactions to the data
* *Optionally* create smaller views to break things into smaller pieces

### Representing Data to Users

When creating a view instance, you will pass in the data that the view should represent.
This will then be used to either fill an existing HTML element in the DOM or create a new element (more on each use case in a bit).

### Translating User Interactions

In order to complete the interactions between the user and data, we need a way to let the user change existing data.
This means registering event listeners to do things like toggling HTML classes, making network requests, or updating properties on the underlying data.

### Child Views

When working with large data sets or complicated user interfaces, it may help to break things down into smaller views.
This will help to manage smaller pieces instead of trying to tackle everything at once.

## Examples

Now, it is time to see how these views get into action.

* [Parent/Child Detail View](detail.html)
* [List and Item View](list-item.html)
* [Edit View](edit-view.html)
