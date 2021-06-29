# Rails Rest API

## Project Setup

**Install all gems**:

```console
$ bundle install
```

**Update the database with new data model**:

```console
$ rails db:migrate
```

**Feed the database with default seeds**:

```console
$ rails db:seed
```

**Start the web server on `http://localhost:3000` by default**:

```console
$ rails server
```

## Usage

| HTTP verbs | Paths  | Used for |
| ---------- | ------ | --------:|
| GET | /api/v1/discussions/:discussion_id/messages | List all messages of a discussion |
| POST | /api/v1/discussions/:discussion_id/messages | Create a message in a discussion |
| GET | /api/v1/discussions/:discussion_id/messages/:id | Show a single message of a discussion |
| PUT | /api/v1/discussions/:discussion_id/messages/:id | Update a message in a discussion |
| DELETE | /api/v1/discussions/:discussion_id/messages/:id | Delete a message in a discussion |
| GET | /api/v1/discussions | List all discussions |
| POST | /api/v1/discussions | Create a discussion |
| GET | /api/v1/discussions/:discussion_id | Show a single discussion |
| PUT | /api/v1/discussions/:discussion_id | Update a discussion |
| DELETE | /api/v1/discussions/:discussion_id | Delete a discussion |