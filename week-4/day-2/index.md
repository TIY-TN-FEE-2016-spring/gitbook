# Monday March 21


## Interruptions & Events

* 12-1:30 Lunch

## Motivation Monday!!!

<iframe width="560" height="315" src="https://www.youtube.com/embed/ZXsQAXx_ao0" frameborder="0" allowfullscreen></iframe>

## Daily JS

The following code is from an app where the speed of a car is accelerated using the `accelerate` function.
But, right now the code is broken, if we call `accelerate()` without passing in any arguments, `speed` will be set to `NaN`.
Try to explain why this is and rewrite the `accelerate` function to fix this error.

```js
var speed = 0;

/* Original */
// function accelerate(amount) {
//   if (amount === undefined) {
//     amount = 0;
//   }
//
//   speed += amount;
// }

function accelerate(amount) {
  speed += amount;
}

accelerate(5); // speed is 5
accelerate(); // speed is NaN
```

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

### Common Wins

* Still growing

### Common Struggles

* Catching up (need to ask questions about it)
* Javascript
* Vocabulary

## Topics

- Review
  *
- `forEach`
- `map`, `reduce`
- Organization of JS with Classes

## Code

http://codepen.io/anon/pen/ONpxVE?editors=0100
https://github.com/TIY-TN-FEE-2016-spring/lesson-04-01

## Homework

Continue working on Etsy. Note, there are some new tasks in there for making the app search based on the search box and when a user clicks "Search".
