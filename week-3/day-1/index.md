# Monday March 14


## Interruptions & Events

* 2-5PM 1 on 1s

## Remember

![No Time To Explain](no-time-to-explain.png)

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

var noexist;

if (x) {
  console.log(`x is truthy?`); // "x is truthy?"
}

if (hi) {
  console.log(`hi is truthy?`); //
}

if (noexist) { // undefined
  console.log(`noexist is truthy?`);
}

if (y) {
  console.log(`y is truthy?`); // "y is truthy?"
}

if (z) {
  console.log(`z is truthy?`); // "z is truthy"
}

if (y(`10`)) { // returns false
  console.log(`y('10') is truthy?`);
}

if (a()) { // Does not log, returns nothing
  console.log(`a() is truthy?`);
}

if (a(null)) { // Does not log, returns nothing
  console.log(`a(null) is truthy?`);
}

if (a(10)) { // Log "a works with 10", returns nothing
  console.log(`a(10) is truthy?`);
}
```

| Truthy                 | Falsey         |
| :-------------         | :------------- |
| true                   | false          |
| Numbers not 0          | undefined      |
| Non-Empty Strings      | null           |
| Objects                | 0              |
| Arrays (check .length) | Empty Strings  |
| Functions              | NaN            |

### Value vs Reference

```js
// Variable Creation
var x;
// Variable Assignment
x = 10;
var y = x;
y = 12;

console.log(x); // 10
console.log(y); // 12

var z = {firstName: 'Bob'};
console.log(z.firstName); // "Bob"

var a = z;
a.firstName = 'Tim';
a = {firstName: 'Jan'};

console.log(z.firstName); // "Tim"
console.log(a.firstName); // "Jan"

var b = [15, 25, 30];
var c = b;
c[1] = 100;

console.log(b); // [15, 100, 30]
console.log(c); // [15, 100, 30]

a = b;

console.log(x); // 10
console.log(y); //12
console.log(z); // {firstName: "Tim"}
console.log(a); // [15, 100, 30]
console.log(b); // [15, 100, 30]
console.log(c); // [15, 100, 30]
```

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

### Common Wins

* Starting to know what we're doing (2 weeks ago is starting to feel good)
* Starting to catch up
* Ask for help (it helps)
* Try things out

### Common Struggles

* Navbar and Footer
* Get stuck on things for too long
* Backlog Planning
* Time Management
* Time Pressure

## Topics

- [Javascript Syntax Vocab](../../resources/js-vocab.html)
  * Variables
  * Maths
  * Strings
  * Arrays
  * Objects
  * Functions
  * `if` & `else`
  * `while` loop
  * `for` loop
- [Node](node.html)

## Code

- [Basic Example](example.html)

https://github.com/TIY-TN-FEE-2016-spring/lesson-03-01

## Homework

https://github.com/TIY-TN-FEE-2016-spring/assignments/tree/master/08-functions-tdd
