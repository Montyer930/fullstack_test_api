# fullstack_test_api

Este proyecto es una API desarrollada como parte de una prueba técnica fullstack. Su objetivo es proporcionar una base robusta para la gestión de datos y operaciones CRUD, integrando buenas prácticas de desarrollo y facilitando la integración con clientes frontend.


## Descripción

Esta API permite gestionar recursos de manera eficiente, ofreciendo endpoints RESTful para operaciones básicas y avanzadas. Está pensada para ser fácilmente extensible y segura.

## Características

- Endpoints RESTful para operaciones CRUD.
- Autenticación y autorización.
- Validación de datos.
- Manejo de errores centralizado.
- Documentación automática de la API.
- Pruebas unitarias y de integración.

## Tecnologías Utilizadas

- Node.js
- Express.js
- MongoDB (Mongoose)
- JWT para autenticación
- Jest para pruebas
- Swagger para documentación

## Instalación

1. Clona el repositorio:
    ```bash
    git clone https://github.com/Montyer930/fullstack_test_api.git
    cd fullstack_test_api
    ```
2. Instala las dependencias:
    ```bash
    npm install
    ```

## Configuración

1. Crea un archivo `.env` en la raíz del proyecto con las siguientes variables:
    ```
    PORT=3000
    JWT_SECRET=tu_secreto
    ```
2. Ajusta los valores según tu entorno.

## Uso

1. Inicia el servidor:
    ```bash
    npm start
    ```
2. Accede a la documentación de la API en `http://localhost:3000/api-docs`.

## Estructura del Proyecto

```
fullstack_test_api/
├── src/
│   ├── controllers/
│   ├── models/
│   ├── routes/
│   ├── middlewares/
│   └── app.js
├── tests/
├── .env.example
├── package.json
└── README.md
```

## Contribuciones

¡Las contribuciones son bienvenidas! Por favor, abre un issue o pull request para sugerencias o mejoras.

## Licencia

Este proyecto está bajo la licencia MIT.

---
Repositorio: [https://github.com/Montyer930/fullstack_test_api](https://github.com/Montyer930/fullstack_test_api)