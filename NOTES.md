# DreamCatcher Sinatra App

### Models

Users, Dreams, Categories, comments

User has_many dreams, and a Dream belongs_to a User
A Category has many Dreams and a Dream can have many categories
A User has many Categories through Dreams
A Dream can have many Comments a Comment belongs to a Dream
A comment belongs to a user  and a user can have many comments


### User
- username
- email
- password
- city
- bio

### Dream
- title
- content
- timestamps
- user_id
- private?

### Category
- name

### Comment
- content
- user_id
- dream_id
- timestamps

### DreamCategory
- user_id
- dream_id
