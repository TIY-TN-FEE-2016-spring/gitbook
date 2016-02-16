# Thursday October 22


## Daily JS

Arrays and Objects (all ES6 like)

```js
var x = [1, 2, 3];
var y = [1, 2, 3];
var z = [x, y];
var a = {'something': x, another: 'hello'};
var b = {x, y};
var c = {x, y};
var d = c;

console.log(x === y);
console.log(x == y);
console.log(x[0]);
console.log(y[0] === x[0]);
console.log(z[0] === x); // Should print true
console.log(a.another);
console.log(a['something']); // How far does it go?
console.log(b === c);
console.log(c === d);

/* Results (Printed statements from console.logs) */
//
//
//
//
//
//
//
//
//
```

## Topics

* [Example Layout](https://raw.githubusercontent.com/TIY-Austin-Front-End-Engineering/mobile-layout-2/master/stage4.png)
* [Breaking Down a Layout](layout-planning.html)
* [Layout Techniques](layout-tricks.html)
* [Flex Box](flex-box.html)
* [Media Queries](media-queries.html)

## Exercise & Lesson Code

https://github.com/TIY-LR-FEE-2015-Fall/lesson-01-04

## Lab

* [Dash App](https://kapeli.com/dash)

## Homework

https://github.com/TIY-LR-FEE-2015-Fall/assignments/tree/master/04-timeline

## Resources

* [Common Device Sizes](https://css-tricks.com/snippets/css/media-queries-for-standard-devices/)
* [Typographic Grid]
* [Line Height](https://css-tricks.com/fun-line-height/)
