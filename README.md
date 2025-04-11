# 🐳 kube-demo

Minimal Go web service containerized with Docker, built and pushed using GitHub Actions, and deployed locally via Kubernetes (Minikube).  
This project demonstrates a basic DevOps pipeline from source code to container to cluster.

---

## 🚀 Features

- ✅ Simple Go HTTP server (`net/http`)
- ✅ Multistage Docker build for small image size
- ✅ GitHub Actions CI/CD:
  - Build Docker image
  - Push to Docker Hub
- ✅ Ready for Kubernetes deployment (Minikube)

---

## ⚙️ Tech Stack

- **Go** – Simple REST endpoint using standard library
- **Docker** – Containerization with multistage build
- **GitHub Actions** – CI/CD pipeline for image build & push
- **Kubernetes (Minikube)** – Local deployment and testing

---

## 📦 Getting Started

### 1. Build & run locally with Docker

```bash
docker build -t kube-demo .
docker run -p 8080:8080 kube-demo
```

Visit: [http://localhost:8080](http://localhost:8080)

---

### 2. Push to Docker Hub

```bash
docker tag kube-demo your-dockerhub-username/kube-demo
docker push your-dockerhub-username/kube-demo
```

---

### 3. GitHub Actions CI/CD

On every push to `main`, the workflow:

- Builds the Docker image
- Pushes it to Docker Hub

📄 Workflow file:  
[.github/workflows/docker-publish.yml](.github/workflows/docker-publish.yml)

🔐 Make sure to add the following repository secrets:

| Name              | Description              |
| ----------------- | ------------------------ |
| `DOCKER_USERNAME` | Your Docker Hub username |
| `DOCKER_PASSWORD` | Docker Hub access token  |

---

### 4. Run in Kubernetes (Minikube)

```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

minikube service kube-demo-service
```

🧪 Kubernetes manifests included in the `k8s/` folder.

---

## 📁 Project Structure

```
.
├── app/                  # Go source code
│   └── main.go
├── Dockerfile            # Multistage Docker build
├── .github/workflows/    # GitHub Actions workflow
│   └── docker-publish.yml
├── k8s/                  # Kubernetes manifests
│   ├── deployment.yaml
│   └── service.yaml
└── README.md
```

---

## 🙋‍♂️ Why this project?

This is a hands-on DevOps practice project meant to demonstrate:

- Containerization of backend services
- CI/CD integration with GitHub Actions
- Local Kubernetes deployment using Minikube

---

## 📌 TODO / Next steps

- [ ] Add readiness & liveness probes
- [ ] Add Helm chart support
- [ ] Add Prometheus & Grafana monitoring
- [ ] Add ingress controller & TLS

---

## 🧠 Author

Made with ☕ and YAML by **Daniel Eller**  
DevOps enthusiast | Portfolio project 💼
