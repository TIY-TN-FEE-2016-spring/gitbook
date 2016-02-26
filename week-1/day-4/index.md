# Thursday March 3

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
console.log(z[0] === x);
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

## Inspiration

### Tumblr Splash Page

[![Tumblr Splash Page](./tumblr.png)](./tumblr.png)

## Exercise & Lesson Code

## Lab

## Homework

https://github.com/TIY-TN-FEE-2016-spring/assignments/tree/master/04-surf-and-paddle

## Resources

* [Common Device Sizes](https://css-tricks.com/snippets/css/media-queries-for-standard-devices/)
* Typographic Grid
