# Screen Recording Script - RailSathi Docker Project

## 🎬 Recording Sections (5-7 minutes total)

### 1. Project Introduction (30 seconds)
- "Hi, I'm demonstrating the RailSathi complaint management system"
- "This is a FastAPI-based microservice with PostgreSQL and Docker"
- "The project handles railway complaints with media upload capabilities"

### 2. Tech Stack Overview (30 seconds)
- Show project structure: `ls -la`
- Highlight key files: Dockerfile, docker-compose.yml, README.md
- "We're using FastAPI, PostgreSQL, Google Cloud Storage, and Docker"

### 3. Environment Setup (1 minute)
- Show .env.example and .env files
- "Environment variables are configured for database and GCS"
- "All secrets are externalized for security"

### 4. Docker Setup (1 minute)
- Run: `docker-compose up --build`
- Show containers starting: postgres and app
- "PostgreSQL initializes with our schema"
- "FastAPI app connects to the database"

### 5. API Documentation (1 minute)
- Navigate to: http://localhost:8000/rs_microservice/docs
- Show Swagger UI with all endpoints
- "Auto-generated API documentation"
- "Complete REST API with validation"

### 6. Health Check (30 seconds)
- Visit: http://localhost:8000/health
- Show JSON response: `{"status": "healthy"}`
- "Health monitoring is built-in"

### 7. API Testing (2 minutes)
- **Create Complaint**: Use Swagger UI or curl
  ```bash
  curl -X POST "http://localhost:8000/rs_microservice/complaint/add" \
    -H "Content-Type: multipart/form-data" \
    -F "name=John Doe" \
    -F "mobile_number=+1234567890" \
    -F "complain_type=cleanliness" \
    -F "complain_description=Coach was dirty" \
    -F "train_number=12345"
  ```

- **Get Complaint**: Show response with complaint data
- **List Complaints**: Show date-based filtering

### 8. Bonus Features (1 minute)
- Show database persistence: "Data survives container restarts"
- Show hot-reloading: "Code changes reflect immediately"
- Show logs: `docker-compose logs -f`
- "All bonus features implemented: health checks, auto-migrations, API docs"

### 9. Cleanup & Conclusion (30 seconds)
- Run: `docker-compose down`
- "Single command to stop everything"
- "Project is production-ready with proper containerization"

## 🎯 Key Points to Emphasize

1. **Single Command Setup**: `docker-compose up --build`
2. **Complete API**: Full CRUD operations
3. **Auto Documentation**: Swagger/OpenAPI
4. **Database Integration**: PostgreSQL with proper schema
5. **Media Support**: Image/video upload capability
6. **Health Monitoring**: Built-in health checks
7. **Development Ready**: Hot-reloading and volumes

## 📝 Demo Commands

```bash
# Start the application
docker-compose up --build

# Check logs
docker-compose logs -f

# Test health
curl http://localhost:8000/health

# Stop everything
docker-compose down
```

## 🌟 Bonus Features Highlighted

- ✅ Database health checks and wait-for-it
- ✅ Auto-generated API documentation
- ✅ Hot-reloading for development
- ✅ Proper environment variable management
- ✅ Production-ready Docker setup
- ✅ Complete REST API with validation 