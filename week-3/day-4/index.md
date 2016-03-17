# Thursday March 17

## Daily JS

### JS Quiz

#### Instructions

Define a function max() that takes two numbers as arguments and returns the largest of them.
Use the if/else statement available in Javascript.

In an editor window, the chrome console, or your note books

```js
function maxTwo(currentMax, compare) {

}

var upperLimit = maxTwo(2, 200);
var upperLimitTwo = maxTwo('2000', 15);
var maxFromArray = [200, 1000, 15, 9999, 24].reduce(maxTwo);

console.assert(upperLimit === 200);
console.assert(upperLimitTwo === '2000');
console.assert(maxFromArray === 9999);

maxOfAll = function() {
  return Array.from(arguments)
    .reduce(maxTwo);
}
```

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

### Common Wins


### Common Struggles


## Vocab

- `arguments` - a special variable in JS which is an array-like structure holding all of the arguments for the current function

## Topics

- Callbacks
- Promises
- Event Listeners
- Arrow Functions

## Code

https://github.com/TIY-TN-FEE-2016-spring/lesson-03-04

## Lab

- Find Max Items
  - Multiple Inputs Find Max Items on Inputs
  - Count up each time the max changes
  - Every 500ms blink a border around the max input
- [Array Functions](array-fns.html)

## Homework

https://github.com/TIY-TN-FEE-2016-spring/assignments/tree/master/12-array-data
