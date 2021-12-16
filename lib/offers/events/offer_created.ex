defmodule Offers.Events.OfferCreated do
  @derive Jason.Encoder
  defstruct [
    :uuid,
    :partner,
    :degree,
    :course,
    :modality
  ] 
end
