class CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.new(
                      quantity: params[:quantity], 
                      user_id: current_user.id,
                      product_id: params[:product_id],
                      status: "carted"
                      )

    if carted_products.save
      redirect_to "/carted_products/#{ carted_products.id }"
    end
  end

  def show
    @carted_product = CartedProduct.find(params[:id])
    @user_id = current_user.id
    @status = "Carted"
  end

  def new

  end

end
