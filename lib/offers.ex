defmodule Offers do

  alias Offers.Runtime
  alias Offers.Aggregates.Offer
  alias Commanded.Aggregates.Aggregate

  def dispatch_command(command) do
    log_session("command")
    command
    |> IO.inspect()
    |> Runtime.dispatch()
    |> IO.inspect()

    log_session("aggregate state")
    IO.inspect(Aggregate.aggregate_state(Runtime, Offer, command.uuid))

    log_session("event stream")
    IO.inspect(Commanded.EventStore.stream_forward(Runtime, command.uuid) |> Enum.map(fn %{data: data} -> data end) |> Enum.reverse())
    IO.puts("--------------------------------------------------------------------------------\n\n")
  end

  defp log_session(name) do
    IO.puts("--------------------------------------------------------------------------------")
    name |> String.upcase() |> IO.puts()
    IO.puts("--------------------------------------------------------------------------------")
  end

end
