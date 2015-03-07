<h1>Team-Managers</h1>

<p>API endpoint: <strong>https://team-managers.herokuapp.com</strong></p>

<h2>Create a User</h2>

<h5>Request</h5>

`POST /users`

```json
"user": {
  "email": "you@domain.com",
  "password": "password"
  "id": id,
  "type": "Manager"
  }
```
<h5>response</h5>

`Status: 201 Created`

creates a new user. returns and authentication token.
```json
{
"user": {
    "email": "you@domain.com"
  }
}
```
error examples:
`Status: 422 unprocessable_entity`

```json
"errors": {
  "message": "authentication failed"
}

{
  "messages": [
  "Password is too short (minimum is 8 characters)"
    ]
}
