# HTTP and REST

## What is HTTP (Hyper Text Transfer Protocol)?

It's how computers talk to each other in the internetz!

Call and Response.

Parts of HTTP Request and Response:

* URL - Location of data we are requesting
* Method/Verb - What type of action are we taking
* Headers - Extra info
* Body - Meat of the content
* Response Code - TLDR; did things break?

> URL and Method only apply to Requests not Responses

## HTTP Methods/Verbs

Along with the URL the method says WHAT we are trying to do

* `GET` - **READ ONLY** (no body can be sent) - Get information from a resource
* `POST` - Create something into the resource that wasn't there before or send a command
* `PUT` or `PATCH` - Changes an existing resource
* `DELETE` - Remove an existing resource
* `OPTIONS` - What can I do with this resource

## HTTP Headers

Extra Info along with the data being sent or received

### Common Headers

* `Accept` - What type of data do we know how to read (PLEASE SEND ME THIS or I will break... 😞)
* `Content-Type` - What is the format of information we are sending
* `Authorization` - Who are we and can we prove it

## HTTP Body (what is this `application/json` thing anyway)

This is the main course!!!

### JSON

Javascript Object Notation

Human and Machine readable way of describing data

```json
{
  "foo": "bar",
  "names": [
    "Homer",
    "Marge"
  ],
  "child": {
    "x": 2,
    "y": false
  }
}
```

> THINGS TO NOTE with JSON

* All quotes are double quotes
* All property names are in quotes
* Not variables
* Only a few data types
  - Booleans
  - Null/Undefined
  - Numbers (Integers or Decimals)
  - Strings
  - Arrays
  - Objects (POJOs)

To create a JSON string from a POJO in Javascript run `JSON.stringify`.

If you have a JSON string, to turn it into a POJO run `JSON.parse`.
