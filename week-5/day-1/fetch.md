# Getting and POSTing Data with `fetch`

Many immersive browser applications require data from a server to show and store user interactions.
Usually this data is transferred to and from the server via HTTP requests via Javascript.

In the past, these requests were made using the Javascript `XMLHttpRequest`.
However, the API for making these requests took a lot of boilerplate code.
Libraries like `jQuery` made these requests easier with things like `$.ajax`, but these libraries are not always available and may not work on the server using Node.js.

When working on ES6/ES2015, the browser vendors hoped to ease some of this pain by introducing the `fetch` function.
`fetch` is built on top of Javascript promises and offers a consistent way of making HTTP requests to servers while making common patterns easier.
While `fetch` can be used to make any HTTP requests, one of its best features is its support for working with APIs that accept and deliver JSON (Javascript Object Notation) data.

## A Word About REST APIs

When working with servers and APIs, the term "REST" or "RESTful Services" is often used with little explanation.
While there are many people that will debate the true meaning of "REST", in general it can be described as a server that responds predictably based on the URL, HTTP Verb, HTTP Headers, and Request Body.

This means that a RESTful API SHOULD update a list of contacts if there are new contacts available if we request `http://myserver.com/contacts`.
But, it SHOULD NOT suddenly start listing an array of airplanes suddenly.

## A Word About URLs, HTTP Verbs, and Request Payloads

When working with HTTP requests, there are four things that a server usually will use to make a decision about what data to return to requesting application.
These consist of the URL, the HTTP Verb, HTTP Headers, and the Request Body.

The URL is something we are rather familiar with.
This is what we enter in the address bar to go to `http://google.com` or the value we set for `href`s in our anchor tags.
The URL is a (hopefully) human readable address for a particular piece of information on the web.
It also should be said that nested urls USUALLY should give further data or insight into a resource.
For instance `/series/1/characters` from the Marvel API returns a list of characters that belong to the series detailed with `/series/1`.

The HTTP Verb is a special piece of information that goes along with the URL and states what kind of action should be taken by the current request.
When requesting things like HTML, CSS, and Javascript files the browser makes `GET` requests to the associated URLs.
However, there are other HTTP Verbs that help differentiate what action is being taken by a request made by Javascript.
The most common HTTP verbs are:

* `GET` - Receive existing data for a resource or set of resources
* `POST` - Create a new instance of a resource or request for an action to be performed
* `PUT` - Update an existing resource
* `DELETE` - Remove an existing resource

Often there is more information that needs to be sent with the URL and HTTP Verb.
For instance, we may need to signify what user is logged in, what type of data we expect, or what type of data we are sending.
This information is most often sent as HTTP headers which are small values sent along with the URL and HTTP Verb when starting a request to a server.

Finally, we have the Request Body.
The Request Body is the meat of information we want to send to the server.
For instance, when creating a user we will need to pass in a string of JSON data with:

```json
{
  "first": "Chuck",
  "last": "Bartowski"
}
```

## `GET`ing JSON Data

Often, our applications need to get data to start with from the server.
In terms of HTTP requests, this is often achieved by making a `GET` request to the server.
Because `GET` requests, are the most common way of interacting with a server, the `fetch` function will make a `GET` request to the passed in URL.

So how do we use `fetch`?
If we are making a `GET` request, all we need to do is pass in the string URL we want to request to the `fetch` function.
This will return a promise that we have to wait on using `.then`.
So let's request data from the URL `https://api.github.com/users/rtablada` and log the result to the console.

```js
fetch(`https://api.github.com/users/rtablada`)
  .then((response) => response.json())
  .then((data) => {
    console.log(data);
  });
```

But what is this `.then((response) => response.json())`?

The `fetch` function will always resolve a `Response` object which represents the active connection from the server we requested data from.
Since this is the active connection, we have to wait for this connection to finish up before we can do work.
This is where `response.json()` comes in.
The `json` method on a `Response` object will wait for the connection to close and then try to turn the returned JSON string data into a Javascript object.

To run the above code <a href="#" id="get-fetch-ex">click here</a> and see the results in the console.

<script type="text/javascript">
document.querySelector('#get-fetch-ex').addEventListener('click', (ev) => {
  ev.preventDefault();
  fetch(`https://api.github.com/users/rtablada`)
    .then((response) => response.json())
    .then((data) => {
      console.log(data);
    });
});
</script>

## `POST`ing Using `fetch`

When POSTing JSON data using `fetch`, there is a little bit more work that needs to be done.
The `fetch` function takes an optional second argument which allows us to set the HTTP Verb, Header, and Body.
So, let's create a new user by posting JSON data to `https://tiny-tn.herokuapp.com/collections/example-users`.
We will need to set the HTTP Verb to `POST`, set a few headers saying we'll be communicating using JSON, and turn the data for our new user to a JSON string.

```js
const userData = {
  "first": "Chuck",
  "last": "Bartowski"
};

fetch(`https://tiny-tn.herokuapp.com/collections/example-users`, {
    method: `post`,
    headers: {
      Accept: `application/json`,
      'Content-Type': `application/json`,
    },
    body: JSON.stringify(userData),
  }).then((response) => response.json())
  .then((data) => {
    console.log(data);
  });
```

To run the above code <a href="#" id="post-fetch-ex">click here</a> and see the results in the console.

<script type="text/javascript">
document.querySelector('#post-fetch-ex').addEventListener('click', (ev) => {
  ev.preventDefault();
  const userData = {
    "first": "Chuck",
    "last": "Bartowski"
  };

  fetch(`https://tiny-tn.herokuapp.com/collections/example-users`, {
      method: `post`,
      headers: {
        Accept: `application/json`,
        'Content-Type': `application/json`,
      },
      body: JSON.stringify(userData),
    }).then((response) => response.json())
    .then((data) => {
      console.log(data);
    });
});
</script>
