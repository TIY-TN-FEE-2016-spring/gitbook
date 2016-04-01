# Application Views (Adding Items)

As our app begins to grow, we will need to share some data between multiple views and react to changes in the data.
These views will be similar to [List Views](list.html), but will have a little bit more functionality.
These application views will know how to clear some of their elements and rerender as if things start from scratch.

## Passing the Application into Other Views

As a reminder, here is the HTML for our app:

```html
<form class="contact-form">
  <input type="text" class="contact-form__first" placeholder="First Name">
  <input type="text" class="contact-form__last" placeholder="Last Name">

  <button>Save</button>
</form>
<ul class="contacts">
</ul>
```

And our existing JS for our application:

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

Now we need something that listens for the contact form to be submitted and will add a new item to our list.
To start we'll use a view to handle just the submission and listen for `submit` events on the current element.
When the form submits, we'll need to make a fetch request to post JSON to our server.

```js
class ContactFormView {
  constructor(element, application) {
    this.element = element;
    this.application = application;

    this.element.addEventListener(`submit`, (ev) => {
      ev.preventDefault();

      const formData = {
        first: this.element.querySelector(`.contact-form__first`).value,
        last: this.element.querySelector(`.contact-form__last`).value,
      };

      fetch(`https://tiny-tn.herokuapp.com/collections/gitbook-contacts`, {
        method: `post`,
        headers: {
          Accept: `application/json`,
          'Content-Type': `application/json`,
        },
        body: JSON.stringify(formData),
      }).then((res) => res.json())
      .then((data) => {
        // ???
      });
    });
  }
}
```

Now when we are done submitting to the server we need a way to inform the application that the data set now has a new item!
Just like we created a `remove` record to modify the local data set, we can do this again to `addContact`.
Let's first look at what this looks like from our `ContactFormView`.
While we're at it, let's also clear our form on a successful remove function.

```js
class ContactFormView {
  constructor(element, application) {
    this.element = element;
    this.application = application;

    this.element.addEventListener(`submit`, (ev) => {
      ev.preventDefault();

      const formData = {
        first: this.element.querySelector(`.contact-form__first`).value,
        last: this.element.querySelector(`.contact-form__last`).value,
      };

      fetch(`https://tiny-tn.herokuapp.com/collections/gitbook-contacts`, {
        method: `post`,
        headers: {
          Accept: `application/json`,
          'Content-Type': `application/json`,
        },
        body: JSON.stringify(formData),
      }).then((res) => res.json())
      .then((data) => {
        this.element.querySelector(`.contact-form__first`).value = '';
        this.element.querySelector(`.contact-form__last`).value = '';

        this.application.addContact(data);
      });
    });
  }
}
```

Then let's update our `ContactApplicationView` to attach the form view and we'll add the `addContact` method which will:
  * Create a new array consisting of the old array items and then the item that was just added
  * Rerender the list of contacts based on the new array of data

```js
class ContactApplicationView {
  constructor(element, data) {
    this.contactListEl = element.querySelector(`.contacts`);
    this.form = element.querySelector(`.contact-form`);
    this.data = data;

    this.attachForm();

    this.render();
  }

  addContact(contact) {
    this.data = [...this.data, contact];

    this.render();
  }

  remove(contact) {
    this.data = this.data.filter((item) => {
      return item.id !== contact.id;
    });

    this.render();
  }

  attachForm() {
    this.formView = new ContactFormView(this.form, this);
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

See this in action:

<blockquote id="contact-add-example">
  <h2>Contacts</h2>

  <form class="contact-form">
    <input type="text" class="contact-form__first" placeholder="First Name">
    <input type="text" class="contact-form__last" placeholder="Last Name">

    <button>Save</button>
  </form>

  <ul class="contacts">
  </ul>
</blockquote>

<script type="text/javascript">
class AddContactView {
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

class AddContactFormView {
  constructor(element, application) {
    this.element = element;
    this.application = application;

    this.element.addEventListener(`submit`, (ev) => {
      ev.preventDefault();

      const formData = {
        first: this.element.querySelector(`.contact-form__first`).value,
        last: this.element.querySelector(`.contact-form__last`).value,
      };

      this.element.querySelector(`.contact-form__first`).value = '';
      this.element.querySelector(`.contact-form__last`).value = '';

      this.application.addContact(formData);
    });
  }
}

class AddContactApplicationView {
  constructor(element, data) {
    this.contactListEl = element.querySelector(`.contacts`);
    this.form = element.querySelector(`.contact-form`);
    this.data = data;

    this.attachForm();

    this.render();
  }

  addContact(contact) {
    this.data = [...this.data, contact];

    this.render();
  }

  remove(contact) {
    this.data = this.data.filter((item) => {
      return item.id !== contact.id;
    });

    this.render();
  }

  attachForm() {
    this.formView = new AddContactFormView(this.form, this);
  }

  render() {
    this.contactListEl.innerHTML = '';

    this.data.forEach((item) => {
      const itemView = new AddContactView(item, this);

      this.contactListEl.appendChild(itemView.element);
    });
  }
}

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
const contactListEl = document.querySelector('#contact-add-example');

var contactView = new AddContactApplicationView(contactListEl, contactData);
</script>
