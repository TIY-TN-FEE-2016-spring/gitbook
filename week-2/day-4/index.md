# Thursday March 10

## Daily JS

### Logic and "Truthiness"

```js
var hi = false;

var x = 20;

var y = function(wat) {
  console.log(wat);

  return wat === 10;
};

var z = 'false';

var a = (foo) => {
  if (foo) {
    console.log(`a works with ${foo.toString()}`);
  }
}

if (x) {
  console.log(`x is truthy?`);
}

if (hi) {
  console.log(`hi is truthy?`);
}

if (noexist) {
  console.log(`noexist is truthy?`);
}

if (y) {
  console.log(`y is truthy?`);
}

if (z) {
  console.log(`z is truthy?`);
}

if (y(`10`)) {
  console.log(`y('10') is truthy?`);
}

if (a()) {
  console.log(`a() is truthy?`);
}

if (a(null)) {
  console.log(`a(null) is truthy?`);
}

if (a(10)) {
  console.log(`a(10) is truthy?`);
}


/* Results */
//
//
//
//
//
//
```

| Truthy                | Falsey         |
| :-------------        | :------------- |
|                       |                |
|                       |                |
|                       |                |
|                       |                |
|                       |                |
|                       |                |

## Interruptions

* None

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

## Topics

* Modifying Build Tools
* SASS Extends
  - CSS Gram
* SASS Mixins
  - Yoga Sass

## Inspiration

## Exercise & Lesson Code

https://github.com/TIY-TN-FEE-2016-spring/lesson-02-04

## Lab

## Homework

https://github.com/TIY-TN-FEE-2016-spring/assignments/tree/master/08-photo-site
