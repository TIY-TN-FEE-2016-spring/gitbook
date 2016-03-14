# JS Examples

```js
var x = 10;
var y;

// Function Expression
var t = function() {
  // Not the same as line 1 since new variable
  // is declared in scope
  var x;
  // Since variable is not declared this is y
  // on line 2
  y = 10;
  console.log(x);
};

t();

console.log(y);

// Fat Arrow Function Expressions
() => {

};

// Named Function "hoists"
foo();

function foo() {
  console.log('Ran the function foo');
}

// Function Expression does not "hoist"
bar();

var bar = function() {
  console.log('Ran the function bar');
}
```
