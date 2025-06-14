FROM python:3.12-slim

WORKDIR /app

RUN apt-get update && \
    apt-get install -y tk && \
    rm -rf /var/lib/apt/lists/*

COPY requirments.txt /app/

RUN pip install --no-cache-dir -r requirments.txt

COPY . /app/

CMD ["python", "main.py"]

