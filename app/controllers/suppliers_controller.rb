class SuppliersController < ApplicationController

  def products
    Product.where(supplier_id: id)
  end
  
  def index
    @suppliers = Supplier.all
    render json: @suppliers.as_json
  end

  def show
    @supplier = Suppliers.find_by(id: params["id"])
    render json: @supplier.as_json
  end

  def create
    @supplier = Supplier.new(
      name: params["name"],
      email: params["email"],
      phone_number: params["phone_number"]
    )
    @supplier.save
    render json: @supplier.as_json
  end

end
