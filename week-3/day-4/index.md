# Thursday November 5


## Daily JS

### JS Quiz

#### Instructions

Define a function max() that takes two numbers as arguments and returns the largest of them.
Use the if/else statement available in Javascript.

Use your whiteboards to write this out:

```js
function maxTwo(currentMax, compare) {
  if (currentMax > compare) {
    return currentMax;
  }

  return compare;
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

## Vocab

- `arguments` - a special variable in JS which is an array-like structure holding all of the arguments for the current function

## Topics

- [Testing Callbacks](testing-callbacks.html)
- [Babel & ES6](es6.html)
- [Spreads](spreads.html)

## Code

https://github.com/TIY-LR-FEE-2015-Fall/lesson-03-04

## Lab

- Find Max Items
  - Multiple Inputs Find Max Items on Inputs
  - Count up each time the max changes
  - Every 500ms blink a border around the max input
- [Array Functions](array-fns.html)

## Homework

https://github.com/TIY-LR-FEE-2015-Fall/assignments/tree/master/12-array-data
