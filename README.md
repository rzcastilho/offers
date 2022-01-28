# Commanded

## Offers Domain Example

### DDD/CQRS/ES

Example project showing how to properly implement a CQRS/ES pattern with Commanded including the components bellow.

- Aggregate
- Commands
- Events
- Handlers

### Setup

```sh
$ git clone https://github.com/rzcastilho/offers.git
$ cd offers
$ docker-compose up -d
$ mix deps.get
$ mix event_store.init
$ mix ecto.migrate
```

### Reset

```sh
$ ./reset.sh
```
