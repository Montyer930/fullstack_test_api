module Api
  class ProductsController < ApplicationController
    before_action :set_product, only: [:show]

    def index
      products = Product.all
      render json: products
    end

    def create
      product = @current_user.products.build(product_params)
      if product.save
        render json: product, status: :created
      else
        render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def show
      render json: @product
    end

    def update
      if @product.update(product_params)
        render json: @product
      else
        render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
      end
    end
    
    def destroy
      @product.destroy
      head :no_content
    end

    private

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
