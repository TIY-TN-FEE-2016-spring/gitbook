# Tuesday March 8

## Daily JS

## Daily JS

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

* None

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

## Topics

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
