class Public::CustomersController < ApplicationControlle
  before_action :authenticate_customer!, only: [:show, :unsubscribe, :edit]

  def show
  end

  def edit
  end

  def unsubscribe
  end
end
