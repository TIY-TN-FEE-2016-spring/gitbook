# Detail Views

As developers, when working with data, we often have to show this data to our end users and fill in an EXISTING HTML Element.

Take for instance the following data for a contact:

```json
{
  "email": "ryan@theironyard.com",
  "name": {
    "firstName": "Ryan",
    "lastName": "Tablada"
  },
  "phone": "555-555-5555"
}
```

We need our users to see the following HTML to represent this data:

```html
<div class="contact">
  <h2 class="contact__name">Ryan Tablada</h2>

  <p class="contact__info">
    <a class="contact__email" href="mailto:ryan@theironyard.com">Email</a>
  </p>

  <p class="contact__info contact__info--phone">555-555-5555</p>
</div>
```

A View class will give us the structure to fill in the DOM reliably.
To start, we will need a class with a constructor that takes in the Element we want to modify and the data we want to use to fill in the HTML.
Then we will take steps to store the element and data on the view instance so that it can be used for later:

```js
class UserView {
  constructor(element, data) {
    this.element = element;
    this.data = data;
  }
}
```

Then in the View, we can create a `render` function.
This function will fill in the HTML with the current properties from our `data` object.
Since we want to immediately fill in our view, we can call `this.render` from our constructor:

```js
class UserView {
  constructor(element, data) {
    this.element = element;
    this.data = data;

    this.render();
  }

  render() {
    this.element.querySelector(`.contact__name`).innerText = `${this.data.name.firstName} ${this.data.name.lastName}`;
    this.element.querySelector(`.contact__email`).setAttribute(`href`, `mailto:${this.data.email}`);
    this.element.querySelector(`.contact__info--phone`).innerText = this.data.phone;
  }
}
```

Now at any point, if our data changes, we can call `render`, and the HTML will update to match.

## Creating View Instances

Notice that the constructor for the `UserView` does not do any querySelecting of it's own.
Instead it needs to be passed in the element from the DOM.
This makes the `UserView` reusable as well as testable.
But, it means that starting up a `UserView` takes some understanding:

To start, we will need to get both element and data and pas them into a new instance of the `UserView`:

```js
const contactEl = document.querySelector(`.contact`);
const user = {
  email: "admin@example.com",
  name: {
    firstName: "Frank",
    lastName: "Underwood"
  },
  phone: "202-555-0130"
};

const contactView = new UserView(contactEl, user);
```

See the interactive demo below.
When the button is clicked, the code above will be run and you will notice that the elements will have their HTML updated.


<blockquote>
  <div class="contact">
    <h2 class="contact__name">Ryan Tablada</h2>

    <p class="contact__info">
      <a class="contact__email" href="mailto:ryan@theironyard.com">Email</a>
    </p>

    <p class="contact__info contact__info--phone">555-555-5555</p>

    <button class="contact__update">Update Contact</button>
  </div>
</blockquote>


<script type="text/javascript">
function UserView(element, data) {
  this.element = element;
  this.data = data;

  this.render();
};

UserView.prototype.render = function() {
  this.element.querySelector('.contact__name').innerText = this.data.name.firstName + ' ' + this.data.name.lastName;
  this.element.querySelector('.contact__email').setAttribute('href', 'mailto:' + this.data.email);
  this.element.querySelector('.contact__info--phone').innerText = this.data.phone;
};

var contactBtn = document.querySelector('.contact__update');
var contactEl = document.querySelector('.contact');
var user = {
  email: "admin@example.com",
  name: {
    firstName: "Frank",
    lastName: "Underwood"
  },
  phone: "202-555-0130"
};


contactBtn.addEventListener('click', function(ev) {
  ev.preventDefault();

  var contactView = new UserView(contactEl, user);
});
</script>
