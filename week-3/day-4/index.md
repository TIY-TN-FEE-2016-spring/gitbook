# Thursday March 17

## Daily JS

### JS Quiz

#### Instructions

Define a function `maxTwo` that takes two numbers as arguments and returns the largest of them.
Use the if/else statement available in Javascript.

In an editor window, the chrome console, or your note books

```js
function maxTwo(first, second) {
  if (second > first) {
    return second;
  }

  return first;
}

test(`it can find max`, (assert) => {
  assert.equal(maxTwo(15, 5), 15);
  assert.equal(maxTwo(20, 5), 20);
  assert.equal(maxTwo(2, 2), 2);
  assert.equal(maxTwo(3, 10), 10);
});

```

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

### Common Wins

* Javascript is sorta coming together
* Things make sense over time

### Common Struggles

* Javascript is still new...ish...
* Working with the DOM is still weird
* Putting it together and visualizing things
* Javascript is not like learning Spanish

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

* Review 08 Homework
* Homework Grade 1-1s
  - Check Pull Request URLs
  - What is ready to re-grade
  - What do you need help on with concepts

## Homework

Work on previous assignments!!!

<iframe width="420" height="315" src="https://www.youtube.com/embed/08-uyfp2iPM" frameborder="0" allowfullscreen></iframe>
