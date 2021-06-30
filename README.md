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

**Unit tests**:

```console
$ rails test test/models/message_test.rb
$ rails test test/helpers/message_helper_test.rb
$ rails test test/models/disussion_test.rb
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

**Create a new discussion**:

```console
curl --request POST --header "Content-Type: application/json" --data "{\"title\" : \"title\"}" http://localhost:3000/api/v1/discussions -v
```

**Create a new message**:

```console
curl --request POST --header "Content-Type: application/json" --data "{\"text\" : \"plip plop\", \"author\": \"toto@gmail.com\", \"recipient\" : \"tata@gmail.com\"}" http://localhost:3000/api/v1/discussions/1/messages -v
```
