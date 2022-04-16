class Admin::HomesController < ApplicationController
  def top
    @admin_side_orders = Order.all
  end
end
