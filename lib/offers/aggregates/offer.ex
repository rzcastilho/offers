defmodule Offers.Aggregates.Offer do
  defstruct [
    :uuid,
    :campus,
    :course,
    :modality,
    price: 0.0,
    active: false
  ]
  
  alias Offers.Commands.{ActivateOffer, CreateOffer, DeactivateOffer, PriceOffer}
  alias Offers.Events.{OfferActivated, OfferCreated, OfferDeactivated, OfferPriced}
  alias Offers.Aggregates.Offer
  
  def execute(%Offer{uuid: nil}, %CreateOffer{uuid: uuid, campus: campus, course: course, modality: modality})
  when uuid != nil and campus != nil and course != nil and modality != nil
  do
    %OfferCreated{uuid: uuid, campus: campus, course: course, modality: modality}
  end
  
  def execute(%Offer{}, %CreateOffer{}) do
    {:error, :offer_already_created}
  end
  
  def execute(%Offer{active: true}, %ActivateOffer{}) do
    {:error, :offer_already_activated}
  end
  
  def execute(%Offer{uuid: uuid}, %ActivateOffer{}) do
    %OfferActivated{uuid: uuid}
  end
  
  def execute(%Offer{active: false}, %DeactivateOffer{}) do
    {:error, :offer_already_deactivated}
  end
  
  def execute(%Offer{uuid: uuid}, %DeactivateOffer{}) do
    %OfferDeactivated{uuid: uuid}
  end
  
  def execute(%Offer{}, %PriceOffer{price: price}) when price < 0.0 do
    {:error, :offer_price_less_than_zero}
  end
  
  def execute(%Offer{uuid: uuid}, %PriceOffer{price: price}) do
    %OfferPriced{uuid: uuid, price: price}
  end
  
  def apply(%Offer{}, %OfferCreated{uuid: uuid, campus: campus, course: course, modality: modality}) do
    %Offer{uuid: uuid, campus: campus, course: course, modality: modality}
  end
  
  def apply(%Offer{} = offer, %OfferActivated{}) do
    %Offer{offer | active: true}
  end
  
  def apply(%Offer{} = offer, %OfferDeactivated{}) do
    %Offer{offer | active: false}
  end
  
  def apply(%Offer{} = offer, %OfferPriced{price: price}) do
    %Offer{offer | price: price}
  end

end
