class Admin::ItemsController < ApplicationController
  def new
    @item = Admin.new
  end

  def create
    @item = Item.new()
  end

  def index
  end
end
