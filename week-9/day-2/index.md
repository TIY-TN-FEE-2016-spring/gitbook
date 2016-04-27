# Tuesday April 26

## Events

* Saturday National Table-Top Day
* Grading

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

### Common Wins

* Understand more about server

### Common Struggles

* Need more practice with Javascript

## Topics

- Why use `simple-form`
- Deploying with Surge.sh
- Acceptance Testing?

## Requirements

- A user can register
- A logged in user can create a recipe with ingredients and steps
- Logged in users can see recipes from other users

## Client Meeting

- Recipe should be linked to the user that created it
- Only logged in users can see the app
- See a list of users, click on a username and see list of recipes they've created
- See number of recipes a user has when looking at username list
- Step is a plain set of instructions
- Ingredients are amount, description, unit of measure

## Models / Database

- User
  * Attributes
    - `username`
    - `email`
    - `password`
  * Relationships
    - `recipes` - has many
- Recipe
  * Attributes
    - `title`
  * Relationships
    - `ingredients` - has many
    - `steps` - has many
    - `user` - belongs to
- Ingredient
  * Attributes
    - `amount`
    - `description`
    - `unit-of-measure`
  * Relationships
    - `recipe` - belongs to
- Step
  * Attributes
    - `description`
    - `order`
  * Relationships
    - `recipe` - belongs to

## Code

* https://github.com/TIY-TN-FEE-2016-spring/lesson-09-01

## Videos

## Homework
