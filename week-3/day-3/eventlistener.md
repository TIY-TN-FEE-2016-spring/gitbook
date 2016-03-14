# User Events

Part of the power that Javascript gives us when creating apps in the browser is the ability to listen and take action when a user interacts with our app.

To listen for these occurrences, we need a way to run code AFTER something happens.
For this, all HTMLElement objects inherit from `EventTarget` which has an `addEventListener` function which allows us to add callback functions to be run once a particular event "fires".

## Some Terminology

* Target - An element or object on which events can be listened for or triggered
* Trigger/Dispatch - When all the handlers for a named event need to be run, this usually happens through native WebAPIs

## Listening for Clicks

The `addEventListener` function takes two arguments:

* Then name of the event that should be listened for
* A callback to be run when the event fires

So, let's make the button below trigger a browser alert:

```js
var alertButton = document.querySelector('.alert-button');

alertButton.addEventListener('click', () => {
  alert(`button clicked`);
});
```

<button class="alert-button">Alert Me</button>

<script>
var alertButton = document.querySelector('.alert-button');

alertButton.addEventListener('click', function() {
  alert(`button clicked`);
});
</script>

## Other Events

While the `click` event is the most common event that we will listen for, there are other events that we may want to listen for:

* `input` - When any text input is put into or removed from an `input` element or parent elements
* `change` - When text in an input has changed and a user has left focus
* `mouseover` - When the user mouse enters the current element or any of its children
* `mouseenter` - When the user mouse enters the current element but does not trigger again until after leaving the entire element
* `scroll` when the scroll of the current element has been scrolled - Useful for parallax style scroll effects
