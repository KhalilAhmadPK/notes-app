# 📒 Ahmad's Notebook

![Django](https://img.shields.io/badge/Django-5.0-092E20?style=for-the-badge&logo=django&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Docker Ready](https://img.shields.io/badge/Docker-Ready-2496ED?style=for-the-badge&logo=docker&logoColor=white)

A minimal, **dark-themed** note-taking application built with Django. Designed for speed, simplicity, and containerized deployment.

## ✨ Features

*   **Dark Mode UI** – Easy on the eyes with a modern, responsive design.
*   **CRUD Operations** – Create, Read, Update, and Delete notes seamlessly.
*   **Database Flexibility** – Built-in support for both SQLite (local dev) and MySQL (production).
*   **Production Ready** – Configured for Nginx proxying and environment-based settings.

## 🛠️ Tech Stack

*   **Backend**: Python 3.12, Django 5.0
*   **Database**: MySQL (Production), SQLite (Development)
*   **Web Server**: Nginx (Recommended for serving static files)
*   **Containerization**: Docker & Docker Compose ready

## ⚙️ Configuration

The application is configured via **Environment Variables**. Whether running locally or in Docker, you can control the behavior without changing code.

| Variable | Default | Description |
| :--- | :--- | :--- |
| `DEBUG` | `False` | Toggle debug mode (`True`/`False`). |
| `SECRET_KEY` | *(insecure)* | Django secret key. **Change heavily in production!** |
| `ALLOWED_HOSTS` | `*` | Comma-separated list of allowed hostnames. |
| `USE_MYSQL` | `False` | Set to `True` to enable MySQL usage. |

### MySQL Connection Details
When `USE_MYSQL=True`, the app expects the following database credentials (standard for Docker usage):
*   **Host**: `db`
*   **Name**: `notes_db`
*   **User**: `root`
*   **Password**: `password`

## 🐳 Deployment (Docker)

This project is structured for easy containerization.

1.  **Application**: Use the provided `requirements.txt` to build your Python image.
2.  **Web Server**: An `nginx.conf` is included in the root directory to help configure Nginx as a reverse proxy.
3.  **Database**: Spin up a MySQL container named `db`.

> **Entrypoint**: Ensure your Docker entrypoint runs the Django server on port 8000.
> Example Command: `python manage.py runserver 0.0.0.0:8000`

---
Typeset with ❤️ by **Khalil Ahmad**.
