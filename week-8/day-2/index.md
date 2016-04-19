# Tuesday April 19

## Interruptions & Events

* 12 - Meeting

## Topics

- Data Down Actions Up
- Build an App

## Requirements

- A user can see all existing reviews
- A user can register as a `reviewer`
- A user can login as a `reviewer`
- A `reviewer` can create a `review` for a `coffee-shop`
  * A `reviewer` can see a dropdown of `coffee-shop`s and choose which one they want to review
  * A `reviewer` can see five radio buttons to say how many stars they want to rate the shop
  * A `reviewer` can see a textfield to type in the comments they have of the shop
- A `reviewer` can see their `review`

## API Details

Host: `https://desolate-brushlands-19147.herokuapp.com`
Namespace: `api`

### Resources

* `coffee-shop`
  - Properties:
    * `name` - `string`
    * `city` - `string`
  - Relationships
    * `reviews` - `hasMany` - `review`
    * `reviewers` - `hasMany` - `reviewer`
  - Restrictions
    * NONE
* `reviewer`
  - Properties:
    * `email` - `string`
    * `password` - `string`
  - Relationships
    * `reviews` - `hasMany` - `review`
  - Restrictions
    * Reviewers can only be updated by themselves
* `review`
  - Properties:
    * `rating` - `number`
    * `comments` - `string`
    * `date` - `date` - Automatically assigned by server
  - Relationships
    * `coffee-shop` - `belongsTo` - `coffee-shop`
    * `reviewer` - `belongsTo` - `reviewer`
  - Restrictions
    * All users can read `review`s
    * Only logged in `reviewer`s can `POST` new reviews
    * `reviewers` can `PATCH` only THEIR `reviews`

## Code

* https://github.com/TIY-TN-FEE-2016-spring/lesson-08-01

## Lab

Review Chat Server

## Homework
