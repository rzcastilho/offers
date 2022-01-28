#!/bin/sh

mix event_store.drop
mix event_store.create
mix event_store.init
mix ecto.drop
mix ecto.create
mix ecto.migrate
