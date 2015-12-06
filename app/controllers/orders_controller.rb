class OrdersController < ApplicationController
 
	def index
	end

	def show
	end

	def new
	end

	def create
	end

	def destroy
	end

  	def create
      @orders = Order.new(order_params)

      respond_to do |format|
        if @order.save
          format.html { redirect_to @order, notice: 'Order was successfully created.' }
          format.json { render :show, status: :created, location: @order }
        else
          format.html { render :new }
          format.json { render json: @order.errors, status: :unprocessable_entity }
        end
      end
    end

  # PATCH/PUT /order/1
  # PATCH/PUT /order/1.json
    def update
      respond_to do |format|
        if @order.update(product_params)
          format.html { redirect_to @order, notice: 'Product was successfully updated.' }
          format.json { render :show, status: :ok, location: @product }
        else
          format.html { render :edit }
          format.json { render json: @order.errors, status: :unprocessable_entity }
        end
      end
    end

  # DELETE /order/1
  # DELETE /orders/1.json
    def destroy
      @order.destroy
      respond_to do |format|
        format.html { redirect_to order_url, notice: 'Order was successfully destroyed.' }
        format.json { head :no_content }
      end
  end
end
