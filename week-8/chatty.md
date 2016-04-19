# Chatty

## Server Resources

* `chatter`
  - Properties
    * `email`
    * `password`
    * `username`
  - Relationships
    * `messages` - Has Many - `message`

* `message`
  - Properties
    * `content` - string
    * `created-at` - date - Auto assigned by the server
  - Relationships
    * `chatter` - Belongs To - `chatter` - Auto assigned by the server to match authenticated user
    * `room` - Belongs To - `room` - Optional, will be assigned to the `general` room if none is defined
  - Access
    * Any one can read
    * Only authenticated users can create new messages
    * Only owners can update/delete their own messages

* `room`
  - Properties
    * `name`
  - Relationships
    * `messages` - Has Many - `message`
