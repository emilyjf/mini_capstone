class OrdersController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax = product.price * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
                      quantity: params[:quantity], 
                      user_id: current_user.id,
                      product_id: params[:product_id],
                      subtotal: calculated_subtotal,
                      tax: calculated_tax,
                      total: calculated_total
                      )
    order.save
    flash[:success] = "Order placed."
    redirect_to "/orders/#{ order.id }"
  end

  def show
    @order_id = params[:id]
    @order = Order.find(params[:id])
    @quantity = @order.quantity
  end
end






