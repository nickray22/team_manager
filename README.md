<h1>Team-Managers</h1>

<p>API endpoint: <strong>https://team-managers.herokuapp.com</strong></p>

<h2>Create or Show a User</h2>

<h5>Request</h5>

`POST /users`

```json
"user": {
  "email": "you@domain.com",
  "password": "password"
  "type": "Manager"
  }
```
<h5>response</h5>

`Status: 201 Created`

creates a new user. returns and authentication token.
```json
{
"user": {
    "email": "you@domain.com",
    "authentication-token":  "string",
    "id": integer,
    "type": "Manager"
    
  }
}
```

<h5> Request User Profile </h5>
`GET /users/:id`

```json
{
  "authentication_token": "string"
  }
```
<h2> Create Team </h2>
`POST /teams`
```json
{
"team": {
  "name": "string",
  "sport": "string"
  "coach_name": "string"
  "homefield": "string"
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
