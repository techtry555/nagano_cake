class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!, only: [:show, :edit, :unsubscribe]

  def show
  end

  def edit
  end

  def unsubscribe
  end
end
