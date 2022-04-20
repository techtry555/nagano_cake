class Public::CustomersController < ApplicationControlle
  before_action :authenticate_customer!, only: [:my_page, :unsubscribe, :edit]

  def my_page
  end

  def edit
  end

  def unsubscribe
  end
end
