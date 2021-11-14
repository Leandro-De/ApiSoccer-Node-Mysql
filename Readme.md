## Soccer APi

Create an api that allows you to perform a crud on soccer players and teams.

## App Deploy

[nodeapisoccer.herokuapp.com/](nodeapisoccer.herokuapp.com/)

## Challenges

- Crud players and teams -- Done.
- Login and user creation with jwt -- Done.
- Filter and search -- Fail
- Deploy app -- Done.

#### Technologies

- Node.js
- Express
- MySql

## API Reference

#### How to Use in local

Clone the project and install the dependencies.

```bash
  npm install
```

#### Environment variables

Add yours env data.

![App Screenshot](https://i.imgur.com/0mc5OXX.png)

#### Identifies the file "apisocccer.sql"

- Create the database from apisoccer.sql.

To start the server

```bash
  npm run start
```

#### In your localhost

- Create a count and login

```http
  http://localhost:3000/login
```

#### Crud

- Add a new Player

```http
  http://localhost:3000/api/player/
```

- In your client http send POST the params.
  ![App Screenshot](https://i.imgur.com/hzKVH7j.png)

- Delete Player
  In your client http send DELETE the params.

```http
  http://localhost:3000/api/player/id/
```

- Update Player

```http
  http://localhost:3000/api/player/id/
```

In your client http send PUT the params, with the data you want to change.
![App Screenshot](https://i.imgur.com/hzKVH7j.png)

### Change "player" by "team" to perform the same steps.

## Autor

- [@Leandro-De](https://github.com/Leandro-De)
