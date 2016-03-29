# Application Views (Removing Items)

As our app begins to grow, we will need to share some data between multiple views and react to changes in the data.
These views will be similar to [List Views](list.html), but will have a little bit more functionality.
These application views will know how to clear some of their elements and rerender as if things start from scratch.

## Passing the Application into Other Views

For communication we'll need to send our application instance into our child views so that they can call methods on the application so that the central data can be updated across all of our views.
This will allow us to update our list of contacts when the user wants to add a new contact.

The starting HTML we will have the following:

```html
<form class="contact-form">
  <input type="text" class="contact-form__first" placeholder="First Name">
  <input type="text" class="contact-form__last" placeholder="Last Name">

  <button>Save</button>
</form>
<ul class="contacts">
</ul>
```

Let's modify our `ContactListView` to act as a `ContactApplicationView`

```js
class ContactApplicationView {
  constructor(element, data) {
    this.contactListEl = element.querySelector(`.contacts`);
    this.form = element.querySelector(`.contact-form`);
    this.data = data;

    this.render();
  }

  render() {
    this.contactListEl.innerHTML = '';

    this.data.forEach((item) => {
      const itemView = new ContactView(item, this);

      this.contactListEl.appendChild(itemView.element);
    });
  }
}
```

Then, let's modify our `ContactView` to take in our application instance:

```js
class ContactView {
  constructor(data, application) {
    this.data = data;
    this.application = application;

    this.element = document.createElement(`li`);
    this.element.classList.add(`contacts__item`);
    this.element.innerHTML = `
      <span class="first"></span>, <span class="last"></span> <button class="remove">X</button>
    `;

    this.element.querySelector(`.remove`).addEventListener(`click`, () => {
      this.remove();
    });

    this.render();
  }

  remove() {
    fetch(`http://my-api.com/contacts/${this.data.id}`, {
      method: `DELETE`
    }).then((res) => res.json())
    .then(() => {
      // NEED SOME WAY TO INFORM THAT ITEM HAS BEEN DELETED
    });
  }

  render() {
    this.element.querySelector(`.first`).innerText = this.data.first;
    this.element.querySelector(`.last`).innerText = this.data.last;
  }
}
```

Now we need a way to tell the application that this item no longer exists in the data set.
For this, let's add a `remove` function that will use `Array.prototype.filter` to remove the item we just removed from our list.
Then, we'll rerun the `render` function so that our list will be updated.

```js
class ContactApplicationView {
  constructor(element, data) {
    this.contactListEl = element.querySelector(`.contacts`);
    this.form = element.querySelector(`.contact-form`);
    this.data = data;

    this.render();
  }

  remove(contact) {
    this.data = this.data.filter((item) => {
      return item.id !== contact.id;
    });

    this.render();
  }

  render() {
    this.contactListEl.innerHTML = '';

    this.data.forEach((item) => {
      const itemView = new ContactView(item, this);

      this.contactListEl.appendChild(itemView.element);
    });
  }
}
```

Then in the click handler for our `ContactView`, we call the `remove` function on our `application`:

```js
class ContactView {
  constructor(data, application) {
    this.data = data;
    this.application = application;

    this.element = document.createElement(`li`);
    this.element.classList.add(`contacts__item`);
    this.element.innerHTML = `
      <span class="first"></span>, <span class="last"></span> <button class="remove">X</button>
    `;

    this.element.querySelector(`.remove`).addEventListener(`click`, () => {
      this.remove();
    });

    this.render();
  }

  remove() {
    fetch(`http://my-api.com/contacts/${this.data.id}`, {
      method: `DELETE`
    }).then((res) => res.json())
    .then(() => {
      this.application.remove(this.data);
    });
  }

  render() {
    this.element.querySelector(`.first`).innerText = this.data.first;
    this.element.querySelector(`.last`).innerText = this.data.last;
  }
}
```

<blockquote id="contact-delete-example">
  <h2>Contacts</h2>

  <form class="contact-form">
    <input type="text" class="contact-form__first" placeholder="First Name">
    <input type="text" class="contact-form__last" placeholder="Last Name">

    <button>Save</button>
  </form>

  <ul class="contacts">
  </ul>

  <button class="contact-list__update">Render Contacts</button>
</blockquote>

<script type="text/javascript">
class ContactDeleteView {
  constructor(data, application) {
    this.data = data;
    this.application = application;

    this.element = document.createElement(`li`);
    this.element.classList.add(`contacts__item`);
    this.element.innerHTML = `
      <span class="first"></span>, <span class="last"></span> <button class="remove">X</button>
    `;

    this.element.querySelector(`.remove`).addEventListener(`click`, () => {
      this.remove();
    });

    this.render();
  }

  remove() {
    this.application.remove(this.data);
  }

  render() {
    this.element.querySelector(`.first`).innerText = this.data.first;
    this.element.querySelector(`.last`).innerText = this.data.last;
  }
}

class ContactApplicationView {
  constructor(element, data) {
    this.contactListEl = element.querySelector(`.contacts`);
    this.form = element.querySelector(`.contact-form`);
    this.data = data;

    this.render();
  }

  remove(contact) {
    this.data = this.data.filter((item) => {
      return item.id !== contact.id;
    });

    this.render();
  }

  render() {
    this.contactListEl.innerHTML = '';

    this.data.forEach((item) => {
      const itemView = new ContactDeleteView(item, this);

      this.contactListEl.appendChild(itemView.element);
    });
  }
}

var contactListBtn = document.querySelector('.contact-list__update');
const contactData = [
  {
    id: 1,
    first: 'Frank',
    last: 'Underwood'
  },
  {
    id: 2,
    first: 'Zoe',
    last: 'Barnes'
  },
  {
    id: 3,
    first: 'Peter',
    last: 'Russo'
  }
];
const contactListEl = document.querySelector('#contact-delete-example');


contactListBtn.addEventListener('click', function(ev) {
  ev.preventDefault();

  var contactView = new ContactApplicationView(contactListEl, contactData);
});
</script>
