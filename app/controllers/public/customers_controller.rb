class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!, only: [:show, :edit, :unsubscribe]

  def show
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def unsubscribe
  end
  
  private
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number, :email, :is_deleted)
  end
end