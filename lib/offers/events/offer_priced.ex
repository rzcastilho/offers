defmodule Offers.Events.OfferPriced do
  @derive Jason.Encoder
  defstruct [
    :uuid,
    :price
  ] 
end
