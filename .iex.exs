alias Offers.Commands.{ActivateOffer, CreateOffer, DeactivateOffer, PriceOffer}
alias Offers.Runtime
alias Offers.Aggregates.Offer
alias Commanded.Aggregates.Aggregate
#
#uuid = UUID.uuid4()
#
#Runtime.dispatch(
#  %CreateOffer{
#    uuid: uuid,
#    campus: "VINHEDO/SP",
#    course: "Administração - Bacharelado",
#    modality: "Semipresencial"
#  }
#)
#
#IO.inspect(Aggregate.aggregate_state(Runtime, Offer, uuid))
#IO.inspect(Commanded.EventStore.stream_forward(Runtime, uuid) |> Enum.map(fn %{data: data} -> data end) |> Enum.reverse())
#
#Runtime.dispatch(
#  %PriceOffer{
#    uuid: uuid,
#    price: 59.90
#  }
#)
#
#IO.inspect(Aggregate.aggregate_state(Runtime, Offer, uuid))
#IO.inspect(Commanded.EventStore.stream_forward(Runtime, uuid) |> Enum.map(fn %{data: data} -> data end) |> Enum.reverse())
#
#Runtime.dispatch(
#  %ActivateOffer{
#    uuid: uuid
#  }
#)
#
#IO.inspect(Aggregate.aggregate_state(Runtime, Offer, uuid))
#IO.inspect(Commanded.EventStore.stream_forward(Runtime, uuid) |> Enum.map(fn %{data: data} -> data end) |> Enum.reverse())
#
#Runtime.dispatch(
#  %PriceOffer{
#    uuid: uuid,
#    price: 0.0
#  }
#)
#
#IO.inspect(Aggregate.aggregate_state(Runtime, Offer, uuid))
#IO.inspect(Commanded.EventStore.stream_forward(Runtime, uuid) |> Enum.map(fn %{data: data} -> data end) |> Enum.reverse())
#
#Runtime.dispatch(
#  %DeactivateOffer{
#    uuid: uuid
#  }
#)
#
#IO.inspect(Aggregate.aggregate_state(Runtime, Offer, uuid))
#IO.inspect(Commanded.EventStore.stream_forward(Runtime, uuid) |> Enum.map(fn %{data: data} -> data end) |> Enum.reverse())
#
