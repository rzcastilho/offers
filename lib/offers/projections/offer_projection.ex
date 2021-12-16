defmodule Offers.Projections.OfferProjection do
  use Commanded.Projections.Ecto,
    application: Offers.Runtime,
    repo: Offers.Repo,
    name: "OfferProjection"
    
  

  end
