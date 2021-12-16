defmodule Offers.Events.OfferCreated do
  @derive Jason.Encoder
  defstruct [
    :uuid,
    :campus,
    :course,
    :modality
  ] 
end
