# Monday March 14


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
### Value vs Reference

```js
// Variable Creation
var x;
// Variable Assignment
x = 10;
var y = x;
y = 12;

console.log(x);
console.log(y);

var z = {firstName: 'Bob'};
var a = z;
a.firstName = 'Tim';

console.log(z.firstName);
console.log(a.firstName);

var b = [15, 25, 30];
var c = b;
c[1] = 100;

console.log(b);
console.log(c);

a = b;

console.log(x);
console.log(y);
console.log(z);
console.log(a);
console.log(b);
console.log(c);

/* Results */
// 10
// 12
// "Tim"
// "Tim"
// [15, 100, 30]
// [15, 100, 30]
// 10
// 12
// {firstName: "Tim"}
// [15, 100, 30]
// [15, 100, 30]
// [15, 100, 30]
```

## Topics

- [Dash & Resources](dash.html)
- [Javascript Syntax Vocab](js-vocab.html)
- [Variable Scope](scope.html)
- [Hoisting and Variables](hoisting.html)
- [Node](node.html)

## Code

- [Basic Example](example.html)

https://github.com/TIY-LR-FEE-2015-Fall/lesson-03-01

## Homework

https://github.com/TIY-LR-FEE-2015-Fall/assignments/tree/master/10-hoisting
