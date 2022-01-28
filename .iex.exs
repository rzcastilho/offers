alias Offers.Commands.{ActivateOffer, CreateOffer, DeactivateOffer, PriceOffer}
alias Offers.Runtime
alias Offers.Aggregates.Offer
alias Commanded.Aggregates.Aggregate

# Aggregate Identifier
uuid = UUID.uuid4()

# Commands
create_offer = %CreateOffer{
  uuid: uuid,
  partner: "University of Illinois",
  degree: "Master",
  course: "Computer Science",
  modality: "Online"
}

price_offer = %PriceOffer{
  uuid: uuid,
  price: 21_440.00
}

activate_offer = %ActivateOffer{
  uuid: uuid
}

price_offer_again = %PriceOffer{
  uuid: uuid,
  price: 18_000.00
}

deactivate_offer = %DeactivateOffer{
  uuid: uuid
}

# Dispatching commands
#Offers.dispatch_command(create_offer)
#Offers.dispatch_command(price_offer)
#Offers.dispatch_command(activate_offer)
#Offers.dispatch_command(price_offer_again)
#Offers.dispatch_command(deactivate_offer)
