# Simple FastAPI Backend

A simple FastAPI backend with 3 GET routes.

## Setup

1. Create a virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

## Run the Server

```bash
uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

The server will start at `http://localhost:8000`

## API Endpoints

### 1. Root Endpoint
- **URL**: `GET /`
- **Description**: Welcome message and API info
- **Response**:
```json
{
  "message": "Welcome to the FastAPI Backend!",
  "status": "running",
  "version": "1.0.0"
}
```

### 2. Health Check
- **URL**: `GET /health`
- **Description**: Check if the service is healthy
- **Response**:
```json
{
  "status": "healthy",
  "service": "FastAPI Backend"
}
```

### 3. Get Users
- **URL**: `GET /users`
- **Description**: Get a list of sample users
- **Response**:
```json
{
  "users": [
    {"id": 1, "name": "Alice Johnson", "email": "alice@example.com"},
    {"id": 2, "name": "Bob Smith", "email": "bob@example.com"},
    {"id": 3, "name": "Charlie Brown", "email": "charlie@example.com"}
  ],
  "count": 3
}
```

## Interactive API Documentation

Once the server is running, visit:
- Swagger UI: `http://localhost:8000/docs`
- ReDoc: `http://localhost:8000/redoc`
