class Api::DataController < ApplicationController
    def productos_por_compania
      id = @current_user.compania_id
      compania = Compania.find(id)
      render json: compania.productos
    end
  
    def usuarios_por_compania
      compania = Compania.find(params[:id])
      render json: compania.usuarios
    end
  
    def companias_por_ciudad
      ciudad = Ciudad.find(params[:id])
      render json: ciudad.companias
    end

    def crear_producto
        producto = Producto.new(producto_params)
        producto.compania_id = @current_user.compania_id # Asignar la compañia del usuario actual
        if producto.save
          render json: producto, status: :created
        else
          render json: { errors: producto.errors.full_messages }, status: :unprocessable_entity
        end
    end
      
    def crear_usuario
        usuario = User.new(usuario_params)
      
        if usuario.save
          render json: usuario, status: :created
        else
          render json: { errors: usuario.errors.full_messages }, status: :unprocessable_entity
        end
    end
      
    private
      
    def producto_params
        params.require(:producto).permit(:nombre, :categoria, :precio, :compania_id)
    end
      
    def usuario_params
        params.require(:usuario).permit(:nombre, :apellido, :cargo, :salario, :telefono, :correo, :password, :password_confirmation, :compania_id)
    end
      
  end
  