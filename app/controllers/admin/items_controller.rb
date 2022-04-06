class Admin::ItemsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new()
  end

  def index
    @admins  = Admin.all
  end
end
