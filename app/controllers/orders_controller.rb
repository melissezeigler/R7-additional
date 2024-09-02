class OrdersController < ApplicationController
  before_action :set_order, only: %i[show edit update destroy]
  before_action :set_customers, only: %i[new edit]

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @customer = @order.customer
  end


  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to @order, notice: 'Order was successfully created.'
    else
      set_customers
      render :new
    end
  end

  def update
    if @order.update(order_params)
      redirect_to @order, notice: 'Order was successfully updated.'
    else
      set_customers
      render :edit
    end
  end

  def destroy
    @order.destroy
    redirect_to orders_url, notice: 'Order was successfully destroyed.'
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def set_customers
    @customers = Customer.all
  end

  def order_params
    params.require(:order).permit(:product_name, :product_count, :customer_id)
  end
end
