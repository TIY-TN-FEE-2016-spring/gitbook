# Thursday March 7

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

console.log(x(12));
console.log(y());
console.log(z.firstName);
console.log(z.somethingCool(8)); // Same a x(8)
console.log(z.getFirstName());
console.log(z.setName('Han', 'Solo'));
console.log(z.fullName());
```

## Interuptions

* None

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

## Topics

* [BEM](./bem.html)

## Inspiration

## Exercise & Lesson Code

https://github.com/TIY-TN-FEE-2016-spring/lesson-02-01

## Lab

## Homework

https://github.com/TIY-TN-FEE-2016-spring/assignments/tree/master/07-flex-forms
