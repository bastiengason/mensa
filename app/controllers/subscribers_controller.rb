class SubscribersController < ApplicationController
  def new
  end

  def update

    token = params[:stripeToken]

    customer = Stripe::Customer.create(
      card: token
      )

  end

end
