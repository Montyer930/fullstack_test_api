module Api
  class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :update, :destroy]
    # GET /products
    def index
      products = Product.all
      render json: products
    end
    # POST /products
    def create
      product = @current_user.products.build(product_params)
      if product.save
        render json: product, status: :created
      else
        render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
      end
    end
    # GET /products/:id
    def show
      render json: @product
    end
    # PATCH/PUT /products/:id
    def update
      return unless @product
      if @product.update(product_params)
        render json: @product
      else
        render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
      end
    end
    
    # DELETE /products/:id
    def destroy
      @product.destroy
      head :no_content
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render json: { error: 'Producto no encontrado' }, status: :not_found
    end

    def product_params
      params.require(:product).permit(:name, :description, :price)
    end
  end
end
