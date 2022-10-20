class CartedProductsController < ApplicationController

  def index
    carted_products = current_user.carted_products.where(status: "carted") 

    render json: carted_products.as_json
  end
  
  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
    product_id: params["product_id"],
    quantity: params["quantity"],
    status: "carted",
    order_id: nil,
    )
    carted_product.save
    render json: carted_product.as_json
  end

  def destroy
    carted_product = current_user.carted_products.find_by(id: params["id"], status: "carted")

    carted_product.status = "removed"
    carted_product.save
    render json: {status: "Carted product successfully removed"}
  end

end
