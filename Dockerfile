FROM python:3.13-alpine

# Install system packages required to build pyarrow
RUN apt-get update && apt-get install -y \
    cmake \
    build-essential \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Set workdir and copy code
WORKDIR /app
COPY . /app

# Install Python dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

CMD ["python3", "app.py"]
