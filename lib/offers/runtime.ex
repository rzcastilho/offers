defmodule Offers.Runtime do
  use Commanded.Application,
    otp_app: :offers,
    event_store: [
      adapter: Commanded.EventStore.Adapters.EventStore,
      serializer: Commanded.Serialization.JsonSerializer,
      event_store: Offers.EventStore
    ],
    registry: :global
  
  router Offers.Router
end
