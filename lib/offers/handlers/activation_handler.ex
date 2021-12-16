defmodule Offers.Handlers.ActivationHandler do
  use Commanded.Event.Handler,
    application: Offers.Runtime,
    name: "ActivationHandler"
    
  require Logger
    
  alias Offers.Events.{OfferActivated, OfferDeactivated}
  
  def handle(%OfferActivated{uuid: uuid}, _metadata) do
    Logger.info(fn -> "Offer #{uuid} activated!" end)
  end
  
  def handle(%OfferDeactivated{uuid: uuid}, _metadata) do
    Logger.info(fn -> "Offer #{uuid} deactivated!" end)
  end
    
end
