# 🚄 RailSathi Complaint Management API (Dockerized)

[![Public](https://img.shields.io/badge/repo-public-brightgreen.svg)](https://github.com/ankitgpt18/railsathi-docker)

A fully open-source, Dockerized FastAPI microservice for managing railway complaints, with PostgreSQL and Google Cloud Storage integration.

---

## 🌍 Public & Open Source

This repository is **public** and open to everyone! You can:
- **Clone** and run it locally
- **Use** it for your own projects
- **Contribute** via pull requests
- **Report issues** or suggest features

No authentication or special access required. Just fork, clone, and go!

---

## 🚀 Features

- **Complaint Management**: Create, read, update, and delete railway complaints
- **Media Upload**: Support for image and video uploads to Google Cloud Storage
- **PNR Validation**: Track PNR validation status
- **Train Details**: Store and retrieve train information
- **RESTful API**: Complete REST API with automatic documentation
- **Docker Support**: Fully containerized with Docker Compose

## 🛠️ Tech Stack

- **Backend**: FastAPI (Python 3.11)
- **Database**: PostgreSQL 15
- **Storage**: Google Cloud Storage
- **Containerization**: Docker & Docker Compose
- **Documentation**: Auto-generated Swagger/OpenAPI docs

## 📋 Prerequisites

- Docker and Docker Compose
- Google Cloud Storage credentials (optional for local development)

## 🚀 Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/ankitgpt18/railsathi-docker.git
   cd railsathi-docker
   ```

2. **Set up environment variables**
   ```bash
   cp .env.example .env
   # Edit .env with your configuration
   ```

3. **Start the application**
   ```bash
   docker-compose up --build
   ```

4. **Access the application**
   - API: http://localhost:8000/rs_microservice
   - Documentation: http://localhost:8000/rs_microservice/docs
   - Health Check: http://localhost:8000/health

## 📚 API Endpoints

### Base URL: `http://localhost:8000/rs_microservice`

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/` | Root endpoint |
| GET | `/docs` | Swagger documentation |
| GET | `/health` | Health check |

### Complaint Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/complaint/add` | Create new complaint |
| GET | `/complaint/get/{id}` | Get complaint by ID |
| GET | `/complaint/get/date/{date}` | Get complaints by date |
| PATCH | `/complaint/update/{id}` | Update complaint |
| PUT | `/complaint/update/{id}` | Replace complaint |
| DELETE | `/complaint/delete/{id}` | Delete complaint |

### Media Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| DELETE | `/media/delete/{id}` | Delete complaint media |

### Train Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/train_details/{train_no}` | Get train details |

## 🔧 Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `POSTGRES_HOST` | Database host | `postgres` |
| `POSTGRES_PORT` | Database port | `5432` |
| `POSTGRES_DB` | Database name | `rail_sathi_db` |
| `POSTGRES_USER` | Database user | `postgres` |
| `POSTGRES_PASSWORD` | Database password | `password` |
| `GCS_BUCKET_NAME` | GCS bucket name | `sanchalak-media-bucket1` |
| `PROJECT_ID` | GCP project ID | `sanchalak-423912` |
| `GOOGLE_APPLICATION_CREDENTIALS` | GCS credentials path | - |
| `MAIL_FROM` | Email sender | `test@example.com` |
| `MAIL_PASSWORD` | Email password | `test123` |
| `MAIL_USERNAME` | Email username | `test@example.com` |
| `MAIL_PORT` | Email port | `587` |
| `MAIL_SERVER` | Email server | `smtp.gmail.com` |
| `DEBUG` | Debug mode | `True` |
| `LOG_LEVEL` | Log level | `INFO` |

## 📁 Project Structure

```
├── RailSathiBE/           # FastAPI application
│   ├── main.py           # Main application file
│   ├── services.py       # Business logic
│   ├── database.py       # Database operations
│   ├── requirements.txt  # Python dependencies
│   └── utils/           # Utility functions
├── Dockerfile           # Docker configuration
├── docker-compose.yml   # Docker Compose setup
├── init.sql            # Database initialization
├── .env.example        # Environment variables template
└── README.md           # This file
```

## 🐳 Docker Commands

```bash
# Build and start services
docker-compose up --build

# Start in background
docker-compose up -d

# View logs
docker-compose logs -f

# Stop services
docker-compose down

# Remove volumes
docker-compose down -v
```

## 🔍 Health Checks

- **Application**: `GET /health`
- **Database**: Automatic health check in Docker Compose
- **Container**: Built-in Docker health checks

## 📝 Sample API Usage

### Create a Complaint
```bash
curl -X POST "http://localhost:8000/rs_microservice/complaint/add" \
  -H "Content-Type: multipart/form-data" \
  -F "name=John Doe" \
  -F "mobile_number=+1234567890" \
  -F "complain_type=cleanliness" \
  -F "complain_description=Coach was dirty" \
  -F "train_number=12345"
```

### Get Complaint by ID
```bash
curl -X GET "http://localhost:8000/rs_microservice/complaint/get/1"
```

## 🎯 Bonus Features Implemented

- ✅ **Wait-for-it script**: Database health checks
- ✅ **Auto-migrations**: Database initialization
- ✅ **API Documentation**: Swagger/OpenAPI auto-generation
- ✅ **Hot-reloading**: Volume mounts for development
- ✅ **Health checks**: Application and database monitoring

## 🚨 Troubleshooting

### Common Issues

1. **Database connection failed**
   - Check if PostgreSQL container is running
   - Verify environment variables in `.env`

2. **Port already in use**
   - Change ports in `docker-compose.yml`
   - Stop conflicting services

3. **Permission denied**
   - Ensure Docker has proper permissions
   - Run with appropriate user privileges

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

## 📞 Support

For issues and questions, please refer to the API documentation at `http://localhost:8000/rs_microservice/docs` when the application is running.

---

**Star this repo if you find it useful!** ⭐ 