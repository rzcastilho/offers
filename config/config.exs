import Config

config :offers, ecto_repos: [Offers.Repo]

config :offers, event_stores: [Offers.EventStore]

config :offers, Offers.EventStore,
  serializer: Commanded.Serialization.JsonSerializer,
  database: "eventstore",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :offers, Offers.Repo,
  database: "projection",
  username: "mysql",
  password: "mysql",
  hostname: "localhost"
