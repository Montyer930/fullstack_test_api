# Fullstack Test API

Este proyecto es una aplicación fullstack que consta de un backend desarrollado en Ruby on Rails y un frontend desarrollado en Angular. A continuación, se describen las características principales de cada parte del proyecto.

## Backend

El backend está construido con Ruby on Rails y proporciona una API para gestionar productos y usuarios. La estructura del backend incluye:

- **Controladores**: Manejan las solicitudes HTTP y ejecutan la lógica de negocio.
  - `products_controller.rb`: Controlador para gestionar productos.
  - `sessions_controller.rb`: Controlador para gestionar sesiones de usuario.
- **Modelos**: Representan las entidades de la base de datos.
  - `product.rb`: Modelo para productos.
  - `user.rb`: Modelo para usuarios.
- **Vistas**: Plantillas para correos electrónicos y otras salidas renderizadas.
- **Configuración**: Archivos de configuración para la aplicación, base de datos, y otros servicios.
- **Base de datos**: Migraciones y seeds para inicializar los datos.

### Comandos útiles

- Iniciar el servidor:
  ```bash
  rails server
  ```
- Ejecutar migraciones:
  ```bash
  rails db:migrate
  ```
- Sembrar la base de datos:
  ```bash
  rails db:seed
  ```

## Instalación de Ruby y sus dependencias

Para ejecutar el backend de este proyecto, es necesario instalar Ruby y sus dependencias. A continuación, se detallan los pasos para la instalación:

### Requisitos previos

- **Sistema operativo**: Linux (se recomienda Ubuntu o Debian).
- **Gestor de paquetes**: `apt` o equivalente.

### Pasos de instalación

1. **Instalar Ruby**:
   ```bash
   sudo apt update
   sudo apt install -y ruby-full build-essential zlib1g-dev
   ```

2. **Configurar el entorno de Ruby**:
   - Agrega las siguientes líneas al archivo `~/.bashrc` o `~/.zshrc`:
     ```bash
     export GEM_HOME="$HOME/gems"
     export PATH="$HOME/gems/bin:$PATH"
     ```
   - Recarga el archivo de configuración del shell:
     ```bash
     source ~/.bashrc
     ```

3. **Instalar Bundler**:
   ```bash
   gem install bundler
   ```

4. **Instalar las dependencias del proyecto**:
   - Navega al directorio del backend:
     ```bash
     cd backend
     ```
   - Instala las gemas necesarias:
     ```bash
     bundle install
     ```


## 🔧 Tecnologías

- Ruby on Rails 8
- PostgreSQL (base alojada en [Neon](https://neon.tech))
- Autenticación con JWT
- Railway (para despliegue)

## 🔐 Autenticación

- Sistema de login con tokens JWT.
- Token requerido en el header `Authorization` para consumir endpoints protegidos.
- Validación de permisos y autenticación con middleware (`before_action`).

## 🗃️ Estructura de la base de datos

- **Departamentos** (seed inicial desde JSON)
- **Ciudades** → relacionan con departamentos
- **Compañías** → relacionan con ciudad, productos y usuarios
- **Productos** → nombre, categoría, precio
- **Usuarios** → nombre, cargo, salario, correo, asociados a compañía

📎 El esquema fue creado manualmente mediante `psql` y cargado con scripts SQL (`fullstack_dump.sql`).

## 📦 Endpoints

| Método | Ruta                             | Descripción                        |
|--------|----------------------------------|------------------------------------|
| POST   | `/login`                         | Inicia sesión y retorna un token   |
| GET    | `/productos/compania/:id`        | Lista productos por compañía       |
| GET    | `/usuarios/compania/:id`         | Lista usuarios por compañía        |
| POST   | `/productos`                     | Crea un producto (auth)            |
| POST   | `/usuarios`                      | Crea un usuario (auth)             |

## 📌 Variables de entorno

Configurar `.env` o variables en Railway:

```env
DATABASE_URL=postgresql://<user>:<pass>@<host>/<db>?sslmode=require
SECRET_KEY_BASE=clave_de_rails
```
# 🚀 Producción
API: https://fullstacktestapi-production.up.railway.app

DB: NeonDB (link entregado al evaluador)

# ▶️ Cómo levantar local
```bash
bundle install
rails db:setup
rails s
```