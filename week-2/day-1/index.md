# Monday March 7

## Daily JS

Arrays and Objects (all ES6 like)

```js
var x = [1, 2, 3];
var y = [1, 2, 3];
var z = [x, y];
var a = {'something': x, another: 'hello'};
var b = {x, y};
var c = {x, y};
var d = c;

console.log(x === y);
console.log(x == y);
console.log(x[0]);
console.log(y[0] === x[0]);
console.log(z[0] === x);
console.log(a.another);
console.log(a['something']); // How far does it go?
console.log(b === c);
console.log(c === d);
```

## Interruptions

* Lunch 12:30-1:30

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

## Topics

* Build Tools
  - What are they?
  - Why do we use them?
  - What are we using?
    * Why that one?
* Preprocessors
  - What are they?
  - Why do we use them?
  - What are we using?
    * Why that one?
* Scaffold
  - `npm install -g yeoman-cli generator-sass-broccoli`
  - `yo sass-broccoli`
* SASS Lint
  - `apm install linter-sass-lint`
* SASS Variables
* [Organizing Code](./organizing.html)
* SASS Imports
* SASS Nesting

## Inspiration

### Twitter Dashboard

![Twitter Dashboard](./twitter.png)

## Exercise & Lesson Code

https://github.com/TIY-TN-FEE-2016-spring/lesson-02-01

## Lab

## Lab JS

We missed "Daily JS" last Thursday so let's make that up here.

### Functions and Fat Arrow Syntax

```js
var x = function() {
  console.log('hello');
};

function y() {
  console.log('world');
}

var z = () => {
  console.log('yup');
};

var a = () => {
  return 'no';
};


console.log(x);
console.log(x());
console.log(y());
console.log(z());
console.log(a());
```

## Homework

https://github.com/TIY-TN-FEE-2016-spring/assignments/tree/master/05-flex-forms
