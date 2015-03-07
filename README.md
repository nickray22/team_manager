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
Showing a team
`GET /teams/:id`

```json
{
  "authentication_token": "string"
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

```
<h2> Create A Schedule </h2>

`POST /schedules`

```json
{
    "schedule": {
        "id": 4,
        "team_id": 2,
        "game_day": "2015-04-07T00:00:00.000Z",
        "practice": "2015-03-07T00:00:00.000Z",
        "date": "2015-03-07T00:00:00.000Z",
        "finish": false
    }
}

```
Show Schedules
`GET /schedules/:id`
```json
{
    "schedule": [
        {
            "id": 1,
            "team_id": 2,
            "game_day": null,
            "practice": "2015-03-07T00:00:00.000Z",
            "date": "2015-03-07T00:00:00.000Z",
            "finish": false
        },
        {
            "id": 2,
            "team_id": 2,
            "game_day": null,
            "practice": "2015-03-07T00:00:00.000Z",
            "date": "2015-03-07T00:00:00.000Z",
            "finish": false
        },
        {
            "id": 3,
            "team_id": 2,
            "game_day": "2015-04-07T00:00:00.000Z",
            "practice": "2015-03-07T00:00:00.000Z",
            "date": "2015-03-07T00:00:00.000Z",
            "finish": false
        },
        {
            "id": 4,
            "team_id": 2,
            "game_day": "2015-04-07T00:00:00.000Z",
            "practice": "2015-03-07T00:00:00.000Z",
            "date": "2015-03-07T00:00:00.000Z",
            "finish": false
        }
    ]
}

```
Update Schedule

`PATCH /schedules/:id`
```json
{
    "schedule": {
        "finish": true
    }
}

```
Example

```json

{
    "schedule": {
        "id": 2,
        "team_id": 2,
        "game_day": null,
        "practice": "2015-03-07T00:00:00.000Z",
        "date": "2015-03-07T00:00:00.000Z",
        "finish": true
    }
}
