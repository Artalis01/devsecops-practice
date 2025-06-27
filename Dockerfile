FROM python:3.7-slim

WORKDIR /app

RUN apt-get update && apt-get install -y gcc libffi-dev libssl-dev \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py .

CMD ["python", "app.py"]