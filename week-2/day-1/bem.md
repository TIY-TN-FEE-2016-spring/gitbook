# Naming HTML with BEM

## What is BEM?

> BEM "is a methodology, that helps us to achieve reusable components and code sharing in the front-end"

Really what this means is that BEM is a naming strategy to help us break down pieces of HTML and CSS rules.
BEM stands for "Block Element Modifier" which describes how to break down HTML on the page.

## Blocks Elements Modifiers

### Block

Block elements are reusable areas of our page that means something WITHOUT its parent element.

This may include something like our `header`, `footer`, `navbar`, or `main-article`.

Blocks give context to the elements within them both from an HTML point of view and from a behavior point of view (CSS and JS).

### Elements

Elements are HTML pieces that change based on the block which they are inside of.

For instance an `author` section may be different depending on if it is in the `main-article` or in a `read-more` block.

Elements have meaning only within their parent block and have no standalone meaning.

### Modifiers

Modifiers allow us to slightly change or modify an existing block or modifier.
Modifiers only include the change between the base block or element and the modified functionality.
Modifiers can be used for recoloring buttons, changing text alignment, or anywhere that we want all of an existing block or element behavior with only a few minor changes.

## Naming things with BEM

More than anything BEM is a way of breaking down HTML and how to name classes.
I will first present the traditional BEM naming convention and then say where I disagree.

### Blocks

When naming blocks, blocks should ALWAYS be lower-cased with multiple words divided by a single hyphen.
Traditional BEM states that we should not rely on any HTML elements (ex `article` or `header`) and style hooks should only be used with class names.

Because on larger sites, we may have multiple `header` HTML elements I do agree with the BEM traditions that we should have a class that specifies WHICH header we are styling.
However, where I disagree is that I don't think we should ever have something like `<header class="header">`.
My issue is that the class `header` doesn't tell us anything about this.
Instead I propose that if this was the top of our page we might have `<header class="page-header">` or `<header class="top-header">`.

### Elements

When naming elements we should always start by naming them by the block that they are included in followed by two underscores and then the element name: `header__hero-text`.
Traditional BEM states that we should not try to make selectors for elements within a block based on just the block name and the element tag name (ex `.page-header h1`) and always use the .

While I agree on on this for the most part, I think that where it breaks down is when the actual HTML may be dynamic (whether from a CMS system or something like a Markdown parser).
In this case we may want a selector like `.main-article p` to style all paragraph tags within the `.main-article` block.
From a BEM categorization standpoint, I'd still consider this to be an "Element" even though the `p` tags do not have a BEM style class name associated with them.

Now I will note that by using `.main-article p` this could have unintended consequences since other blocks could be nested within the `.main-article` block.
Another approach would be to possibly layout your HTML like so:

```html
<article class="main-article">
  <div class="main-article__author-info">...</div>
  <div class="main-article__content"></div>
</article>
```

Then styling `.main-article__content p` which gives a bit more specificity.

### Modifiers

When naming modifiers with BEM we should always start with the block or element class name followed by two hyphens and then the modifier name `.page-header__hero-text--centered`.
Note that when creating HTML you will have to have both the original class along with the modifier class for the full styling to take effect:

```HTML
<article class="main-article main-article--centered">
  <div class="main-article__author-info">...</div>
  <div class="main-article__content"></div>
</article>
```
