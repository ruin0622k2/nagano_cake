class Admin::OrdersController < ApplicationController
  def show
    @order = Orders_detail.find(params[:id])
  end

  def update
  end
end
