# Node.js

Node is a runtime that allows us to run Javascript outside of the browser.
So far, we have used Node to run our Broccoli build tools, but it can run any Javascript code that we want.

This also means that we can quickly run Javascript without having to reload our browser over and over.
Node also gives us a lot of power to work with the filesystem and create servers (but more on that later).

## Running Files with `node`

To run a Javascript file from the terminal, we can use the `node` command and then list the name of the file that we want to run.

## Things to Think About When Using Node

While most Javascript should run in Node, we do have to be aware that since Node is running outside of the browser, there are things like `document` and `window` which are not available to applications in Node.
On the other hand, there are features in Node that are not yet available in browsers.
