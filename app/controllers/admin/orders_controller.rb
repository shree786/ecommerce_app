class Admin::OrdersController < ApplicationController
  def index
    @order = Order.all

  end
  def create
  
  end
  def destroy
    @order = Order.params[:order_id,:order_name]
    @order.destroy
  end
end
