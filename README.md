## Endpoints

### POST /api/login
- Request: { email, password }
- Response: { token }

### POST /api/products
- Headers: Authorization: Bearer TOKEN
- Body: { name, description, price }

...
