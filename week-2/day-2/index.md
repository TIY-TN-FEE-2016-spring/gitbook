# Tuesday March 8

## Daily JS

## Daily JS

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


console.log(x); // function() { console.log('hello') }
console.log(x()); // "hello" // undefined
console.log(y()); // "world" // undefined
console.log(z()); // "yup" // undefined
console.log(a()); // "no"
```

### Function Arguments

When looking at variables or arguments inside of functions, if they are created in the function itself just rename it `functionName_variableName` so that it is clear that these variables are DIFFERENT than variables that exist outside of that function.

```js
var x = 2;

var y = function(foo) {
  return foo;
};

function z(z_foo) {
  return z_foo + x;
}

/* Fat arrow same as
var a = function(x = 9, y = 10) {
  return x * y;
};
 */
var a = (x = 9, y = 10, z = 2) => {
  return x * y;
};

var b = (x, y) => {
  return x(y);
};


console.log(y(12));
console.log(y('hello'));
console.log(foo);
console.log(y(x));
console.log(z('Five'));
console.log(a(15, 2));
console.log(x);
console.log(a());
console.log(a(41));
console.log(b(y, x));
```

## Interruptions

* Meeting 12:30-1:30

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

### Common Struggles

* Breaking Down Components and Wireframes
* Flex Wrap, Flex Grow, Flex Shrink
* Layout
* `align-items` vs `justify-content`
*

## Topics

* Resources
  -
* Media Queries
* Pseudo Selectors
* Pseudo Elements
* CSS `content`

## Inspiration

## Exercise & Lesson Code

https://github.com/TIY-TN-FEE-2016-spring/lesson-02-02

## Lab

## Homework

https://github.com/TIY-TN-FEE-2016-spring/assignments/tree/master/06-tshirt-layout
