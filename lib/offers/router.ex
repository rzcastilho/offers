defmodule Offers.Router do
  use Commanded.Commands.Router
  
  alias Offers.Commands.{ActivateOffer, CreateOffer, DeactivateOffer, PriceOffer}
  alias Offers.Aggregates.Offer
  
  identify Offer, by: :uuid
  dispatch [
    ActivateOffer,
    CreateOffer,
    DeactivateOffer,
    PriceOffer
  ], to: Offer
end
