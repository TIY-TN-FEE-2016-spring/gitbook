# List Views and Item Views

In many applications, you will need to represent an array of data to the user.
Unlike a [detail view](detail.html), there is no way to ensure the right number of existing elements ready to accept data from each item in the array.
This will actually require that we create TWO different view classes:

* List View - Responsible for managing an array of data
* Item View - Responsible for creating and managing an element to represent a single item from the array

Let's consider the following set of data:

```json
[
  {
    "first": "Frank",
    "last": "Underwood"
  },
  {
    "first": "Zoe",
    "last": "Barnes"
  },
  {
    "first": "Peter",
    "last": "Russo"
  }
]
```

This will need to be turned into the following HTML:

```html
<ul class="contacts">
  <li class="contacts__item">
    <span class="first">Underwood</span>, <span class="last">Frank</span>
  </li>
  <li class="contacts__item">
    <span class="first">Barnes</span>, <span class="last">Zoe</span>
  </li>
  <li class="contacts__item">
    <span class="first">Russo</span>, <span class="last">Peter</span>
  </li>
</ul>
```

To start, we'll create the `ContactView` class to manage an `li` element for a contact object.
This will start with a `constructor` that accepts the data needed, create the DOM element and blank shell for the data to fill in.
Then just like with a detail view, a `render` function will be created to fill in this blank shell:

```js
class ContactView {
  constructor(data) {
    this.data = data;

    this.element = document.createElement(`li`);
    this.element.classList.add(`contacts__item`);
    this.element.innerHTML = `
      <span class="first"></span>, <span class="last"></span>
    `;
    this.render();
  }

  render() {
    this.element.querySelector(`.first`).innerText = this.data.first;
    this.element.querySelector(`.last`).innerText = this.data.last;
  }
}
```

This class alone won't be enough to represent our entire array of data and manage the full set of data.
This is where a List View comes in to play: it will loop through the data and append it into an existing element in the DOM.

To start, we'll need a `constructor` that accepts the `element` we want to fill and the `data` array we want to represent.
Then we'll create a render function that loops through the data and creates a new `ContactView` for every item.
Finally, in the loop, we'll append the element from the `ContactView` into the list element accepted from the constructor:

```js
class ContactListView {
  constructor(element, data) {
    this.element = element;
    this.data = data;

    this.render();
  }

  render() {
    this.data.forEach((item) => {
      const itemView = new ContactView(item);
      this.element.appendChild(itemView.element);
    });
  }
}
```

Notice that the `ContactView` element had to be appended and placed into the DOM.
This is because it is only responsible for managing the element it created, something else will have to insert it.

## Creating View Instances

Similar to the detail view, niether of these classes will do ANY work until we actually create instances of them.
Here, we only have to create a single `ContactListView` and the `render` function and loop will take over from there.

```js
const contactData = [
  {
    first: `Frank`,
    last: `Underwood`
  },
  {
    first: `Zoe`,
    last: `Barnes`
  },
  {
    first: `Peter`,
    last: `Russo`
  }
];
const contactEl = document.querySelector(`.contacts`);

new ContactListView(contactEl, contactData);
```

Once again, here's an interactive example that will run the code above:

<blockquote>
  <h2>Contacts</h2>

  <ul class="contacts-list">
  </ul>

  <button class="contact-list__update">Render Contacts</button>
</blockquote>

<script type="text/javascript">
function ContactView(data) {
  this.data = data;

  this.element = document.createElement('li');
  this.element.classList.add('contacts__item');
  this.element.innerHTML = '<span class="first"></span>, <span class="last"></span>';
  this.render();
};

ContactView.prototype.render = function() {
  this.element.querySelector('.first').innerText = this.data.first;
  this.element.querySelector('.last').innerText = this.data.last;
};

function ContactListView(element, data) {
  this.element = element;
  this.data = data;

  this.render();
};

ContactListView.prototype.render = function() {
  this.data.forEach((item) => {
    const itemView = new ContactView(item);
    this.element.appendChild(itemView.element);
  });
};

var contactListBtn = document.querySelector('.contact-list__update');
const contactData = [
  {
    first: 'Frank',
    last: 'Underwood'
  },
  {
    first: 'Zoe',
    last: 'Barnes'
  },
  {
    first: 'Peter',
    last: 'Russo'
  }
];
const contactListEl = document.querySelector('.contacts-list');


contactListBtn.addEventListener('click', function(ev) {
  ev.preventDefault();

  var contactView = new ContactListView(contactListEl, contactData);
});
</script>
