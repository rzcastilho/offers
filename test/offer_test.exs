defmodule OfferTest do
  use ExUnit.Case
  doctest Offer

  test "greets the world" do
    assert Offers.hello() == :world
  end
end
