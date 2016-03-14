# Vocabulary and Syntax

# Variables

> Variables are named set aside places in memory for storage of different values or references.

**TLDR** - Variables point to either values or references (other pointers).

# (Data) Types

Types are basic description of how a particular piece of data in Javascript works and is evaluated.

## Types of "Value" variables

Value or Primitive types are defined only by their value.
This means that "X" will always equal "X" no matter when the values were created.

### Boolean

Boolean values are `true` or `false`.

### Null

`null` is a reference to an empty value.
This is a bit different from `false` so beware of when using each one.

### Undefined

`undefined` is the value when a variable has been created but is not had any set value, or it is the default return for functions without a `return` statement.

### Numbers

In Javascript numbers are any numeric value: either Integer or Decimal and both are treated equally.

### Strings

Strings in javascript are collections of text characters.
To create strings, encase any set of characters in single quotes ('), double quotes ("), or back-ticks (\`).

## Reference Types

Reference or "Symbol" type objects are passed around and evaluated based on when they are created.
This means that `{x: 'a'} !== {x: 'a'}` since these are two distinct references.

### Objects

Objects are grouped storage that allows values and functionality to move around together.
Everything in Javascript functions as if they are objects.
But for the sake of this vocabulary, Objects are created using `{}` and have keys with values.

This means that a single person could have a keys for `firstName`, `lastName`, and a `work` function all together and stored as a single variable.

* Object Keys - The named values within an object: can be accessed via dot or bracket notation
* Object Values - The values set to a particular key within an object

### Arrays

Arrays are special objects that allow for ordered grouping of similar objects.

## Functions

Functions are repeatable pieces of code that can be changed based on passed in arguments.
Functions can also use the `return` keyword to send back a value to whatever called the function.

### Named Functions or Function Declaration

Named functions are created by using the `function` keyword followed by the name of the function we want to create, then a set of parenthesis with any named arguments needed, and finally a set of curly braces to encase the code to be run when the function is called.

```js
function sum(arg1, arg2) {
  return arg1 + arg2;
}
```

### Function Expressions

Function Expressions are similar to named functions, but do not have a name before the set of arguments.
This means that this function can be set to a variable, value in an object, or used as an anonymous function.

```js
var alsoSum = function (arg1, arg2) {
  return arg1 + arg2;
}
```

### Anonymous Functions

Anonymous functions do not differ from Function Expressions, it is just the way of using a function expression without setting it to a variable or part of an object.
