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
  bin/rails server
  ```
- Ejecutar migraciones:
  ```bash
  bin/rails db:migrate
  ```
- Sembrar la base de datos:
  ```bash
  bin/rails db:seed
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

## Frontend

El frontend está desarrollado con Angular y proporciona una interfaz de usuario para interactuar con la API del backend. La estructura del frontend incluye:

- **Componentes**: Elementos reutilizables de la interfaz de usuario.
  - `app.component.ts`: Componente principal de la aplicación.
- **Rutas**: Configuración de rutas para la navegación de la aplicación.
- **Estilos**: Archivos SCSS para la personalización de estilos.

### Comandos útiles

- Instalar dependencias:
  ```bash
  npm install
  ```
- Iniciar el servidor de desarrollo:
  ```bash
  ng serve
  ```
- Construir la aplicación para producción:
  ```bash
  ng build --prod
  ```

## Configuración del entorno

### Variables de entorno

El proyecto utiliza variables de entorno para configurar aspectos sensibles como claves API y configuraciones de base de datos. Asegúrate de configurar el archivo `config/master.key` para el backend y las variables necesarias en el entorno del frontend.

## Contribución

1. Haz un fork del repositorio.
2. Crea una rama para tu funcionalidad o corrección de errores.
3. Realiza tus cambios y escribe pruebas si es necesario.
4. Envía un pull request describiendo tus cambios.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo LICENSE para más detalles.
