class Admin::ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new()
  end

  def index
    @items  = Item.all
  end
end
