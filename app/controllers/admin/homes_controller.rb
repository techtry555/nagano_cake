class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!

  def top
    @admin_side_orders = Order.all
  end
end
