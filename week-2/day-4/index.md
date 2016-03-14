# Thursday March 10

## Daily JS

### Objects and an intro to `this`

```js
var x = function(one) {
  return one + 10;
};

var y = function() {
  return this.firstName;
};

var z = {
  firstName: 'John',
  lastName: 'Doe',

  somethingCool: x,

  getFirstName: y,

  fullName: function() {
    return `${this.firstName} ${this.lastName}`;
  },

  setName(first, last) { // setName: function(first, last) {
    this.firstName = first;
    this.lastName = last;
  },
};

console.log(x(12)); // 22
console.log(y()); // Exception: Cannot lookup property "firstName" of undefined
console.log(z.firstName);  // "John"
console.log(z.somethingCool(8)); // 18
console.log(z.getFirstName()); // "John"
console.log(z.fullName()); // "John Doe"
z.setName('Han', 'Solo');
console.log(z.fullName()); // "Han Solo"
z.firstName = "Luke";
z.lastName = "Skywalker";
console.log(z.fullName("Foo", "Bar")); // "Luke Skywalker"
z.lastName = "Organa";
console.log(z.fullName()); // "Luke Organa"
z.setName("Jar Jar");
console.log(z.fullName()); // "Jar Jar undefined"
```

## Interruptions and Events

* Lunch Calls 12:00-1:30PM
* Planning for Crash Course?
* Crash Course SQL Basics & Intro to Java 6:15 PM

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

### Common Wins

* Starting to get Flexbox
* Keep things simple
* Look at what you know compared to last week
* Dev Tools are your friend
* Don't stare at code, try things out

### Common Struggles

* Catch what you can from class
* Writing TOO MUCH code (side effects)
* Line-Height
* Positioning
* Box Sizing
* Timing and Backlog

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
