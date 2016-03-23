# Vanilla Javascript Cheatsheet

## Variable Declaration and Assignment

* `var` - Declares a variable scoped to the current function
* `const` - Declares a variable that can never change and is scoped to the nearest block (`if`, `for`, `else`) or function
* `let` - Declares a variable that can be change and is scoped to the nearest block (`if`, `for`, `else`) or function
* `left = right` - Fully evaluates the value of the right side THEN assigns that value into the left variable

## Logic Operators

* `==` - Compares left and right value (but not type) returns true if they are the same
* `!=` - Compares left and right value (but not type) returns true if they are not the same
* `===` - Compares left and right value (including type) returns true if they are the same
* `!==` - Compares left and right value (including type) returns true if they are not the same
* `<` - Returns true if the left value is less than the right value (tries to make things the same type)
* `<=` - Returns true if the left value is less than or equal to the right value (tries to make things the same type)
* `>` - Returns true if the left value is greater than the right value (tries to make things the same type)
* `>=` - Returns true if the left value is greater than or equal to the right value (tries to make things the same type)

## Math

* `left + right` - Returns the sum of both sides (does not change the value of `left` or `right`)
* `left - right` - Returns the result of subtracting the right side from the left (does not change the value of `left` or `right`)
* `left * right` - Returns the product of two sides (does not change the value of `left` or `right`)
* `left / right` - Returns the result of dividing the right side from the left (does not change the value of `left` or `right`)
* `left % right` - Returns the remainder after dividing the right side from the left (does not change the value of `left` or `right`)
* `left += right` - Returns the sum of both sides then sets the left side to the result
* `left -= right` - Returns the result of subtracting the right side from the left then sets the left side to the result
* `left ++` - Returns the sum of left add `1` then sets the left side to the result (same as `left += 1`)
* `left --` - Returns the result of left subtract `1` then sets the left side to the result (same as `left -= 1`)

## Blocks

* `if (statement) { }` - Checks if the statement in parenthesis is "truthy", if so run the code in the block, otherwise skip the block entirely
* `if (statement) { /* ifStuff */ } else { /* elseStuff */ }` - Checks if the statement in parenthesis is "truthy", if so only run the code in the `ifStuff` block, otherwise only run the code in the `elseStuff` block
* `while (statement) { /* ifStuff */ }` - Checks if the statement in parenthesis is "truthy", if so run the code in the block, when the block is complete make check again and repeat until statement is "falsy" (could be endless...)
* `for (/* initialize */; /* statement */; /* change */) { }` - Similar to a `while` block, but has an initialize step that only occurs once, and after the loop run the `change` statement before running checks

## Strings

* `` `${javascriptInHere}` `` - Inside of `` ` ``s, when you encounter a `${}` evaluate the stuff in the curly braces as Javascript and put it right there in a string: ``const x = `Hello`; const y = `${x} World`;`` The variable `y` would be `"Hello World"`
* `.length` - The number of all characters in a string
* `.split(separator)` - Return an array of strings splitting on the passed in separator and removes all separators: ``const x = `Hello`; const y = x.split(`e`);`` The variable `y` would be `["H", "llo"]`

## Arrays

* `[]` - Creates a new empty array (values can be put inside separated by commas)
* `.length` - The number of entries in the array
* `.push(a)` - Modifies the existing array and adds passed in value to the end of the array
* `.forEach(cb)` -
* `.map(cb)` -
* `.reduce(cb)` -

* Accessing Items

```js
const x = [`1`, `2`, `3`];

/**
 * Remember array positions start at 0
 * and goes to (.length - 1)
 */
const y = x[1];
console.log(y); // "2"
```

# "Array Like" Objects

* `Array.from(arrayLike)` -

## DOM - Document Object Model (What the user sees and interacts with)

* `document` - The loaded page in the browser as an Object
* `document.querySelector(selector)` - Returns the FIRST element matching the selector ANYWHERE on the page. If none is found, return `null`
* `document.querySelectorAll(selector)` - Returns a list elements matching the selector ANYWHERE on the page. If none are found, return an Empty Element List
* `document.createElement(tagName)` - Returns a newly created element in memory (not shown to the user yet) with a given `tagName`

## Elements

* `.querySelector(selector)` - Returns the FIRST element matching the selector within the element. If none are found, return `null`
* `.querySelectorAll(selector)` - Returns a list elements matching the selector within the element. If none are found, return an Empty Element List
* `.classList` - An "array-like" list of all the classes for an element
  - `.classList.add(name)` - Adds a class to the element if it doesn't already have the class
  - `.classList.remove()` - Removes a class to the element if it's there, if not do nothing
  - `.classList.toggle()` - Adds a class to the element if it doesn't already have the class,
    removes the class if it already exists in the `classList`.
    Returns `false` if class is removed, returns `true` if class is added
* `.innerText` - Reads the text content within an element
* `.innerText = something` - Sets the text content of an element (escapes special characters or HTML)
* `.innerHTML` - Reads the HTML string content of an element
* `.innerHTML = something` - Sets the HTML content of an element AND parses all content as HTML - [Example](http://codepen.io/anon/pen/VapBjV)
* `.textContent` - READ ONLY: Escaped version of `innerText`
* `.style` - Object containing the inline style properties for an element
* `.addEventListener(eventName, callback)` - Registers a callback function to be run when the event named by `eventName` is fired
