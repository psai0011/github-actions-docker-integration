# 🚀 Flask App with GitHub Actions CI/CD and Docker Hub

This is a simple Flask project that demonstrates CI/CD using GitHub Actions and Docker Hub.

## 🧱 Project Structure

```
.
├── app.py               # Flask app
├── test_app.py          # Pytest for testing the app
├── Dockerfile           # Docker image build instructions
├── .github/workflows/
│   └── cicd.yml         # GitHub Actions workflow file
└── README.md            # Project documentation
```

## ▶️ Run Locally

```bash
# Step 1: Install Flask
pip install flask

# Step 2: Run the app
python app.py

# App will run on: http://localhost:5000
```

## 🧪 Run Tests

```bash
# Step 1: Install pytest
pip install pytest

# Step 2: Run the tests
pytest
```

## 🚣 Run with Docker

```bash
# Build Docker image
docker build -t flask-docker-app .

# Run Docker container
docker run -p 5000:5000 flask-docker-app
```

## 🖁️ GitHub Actions Workflow

On every push to the `main` branch:

* Runs `pytest` to check code.
* Builds a Docker image.
* Pushes the image to Docker Hub.

## 🔐 GitHub Secrets Required

Set these in your GitHub repo settings → Secrets and variables:

* `DOCKER_USERNAME` → Your Docker Hub username
* `DOCKER_PASSWORD` → Your Docker Hub password or token
