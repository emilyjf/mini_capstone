class OrdersController < ApplicationController
  def create
    order = Order.new(
                      quantity: params[:quantity], 
                      user_id: current_user.id
                      )
    order.save
    flash[:success] = "Order placed."
    redirect_to "/orders/#{ order.id }"
  end

  def show
    @order_id = params[:id]
    @order = Order.find_by(id: @order_id)


    @quantity = @order.quantity
  end
end






