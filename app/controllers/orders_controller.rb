class OrdersController < ApplicationController
  before_action :authenticate_user


  def create
    carted_products = current_user.carted_products.where(status: "carted") 
    
    calculated_subtotal =  0
    calculated_tax = 0
    calculated_total = 0

    carted_products.each do |carted_product|
      product = carted_product.product
      calculated_subtotal += product.price * carted_product.quantity
      calculated_tax += product.tax * carted_product.quantity
      calculated_total += calculated_subtotal + calculated_tax
    end

    @order = Order.new(
    user_id: current_user.id,
    subtotal: calculated_subtotal,
    tax: calculated_tax,
    total: calculated_total
    )
    if @order.save
      carted_products.update_all(status: "purchased", order_id: @order.id)
    end
  
    render template: "orders/show"
  end

  def show
    @order = Order.find_by(id: params["id"])

      if current_user.id == @order.user_id
        render template: "orders/show"
      else
        render json: { message: "You are not authorized to view this page."}, status: :unauthorized
      end 
  end

  def index
    @orders = current_user.orders 

    render template: "orders/index" 
  end
end
