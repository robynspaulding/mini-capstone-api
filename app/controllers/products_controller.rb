class ProductsController < ApplicationController

  def all_products
    render json: { message: "hi"} 

  end
end
