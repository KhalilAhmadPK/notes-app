FROM python:3.12-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    pkg-config \
    default-libmysqlclient-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy project
COPY . .

# Default command
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

