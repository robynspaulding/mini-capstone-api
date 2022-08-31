class ProductsController < ApplicationController

  def all_products
    products = Product.all

    render products.as_json

  end
end
