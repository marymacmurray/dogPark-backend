## Server-side Routes
 ### Users Routes:
 - GET /users
 - GET /users/:id
 - POST /users
 - PUT /users/:id
 - DELETE /users/:id

 ### Announcements Routes:
 - GET user/:user_id/announcements
 - GET user/:user_id/announcements/:id
 - POST user/:user_id/announcements
 - PUT user/:user_id/announcements/:id
 - DELETE user/:user_id/announcements/:id

 ### Comments Routes:
 - GET user/:user_id/announcements/:id/comments
 - GET user/:user_id/announcements/:id/comments/:id
 - POST user/:user_id/announcements/:id/comments
 - PUT user/:user_id/announcements/:id/comments/:id
 - DELETE user/:user_id/announcements/:id/comments/:id

 ### Likes Routes:
 - GET user/:user_id/posts/:post_id/hates
 - POST user/:user_id/posts/:post_id/hates
 - DELETE user/:user_id/post/:post_id/hates

 ### Follows Routes:
 - GET user/:user_id/followers
 - GET user/:user_id/following
 - POST /follow
 - DELETE /unfollow

 ### Authentication Routes:
 - POST /auth/login
 - GET /auth/verify