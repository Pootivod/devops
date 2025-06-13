FROM python:3.12-slim

WORKDIR /app

COPY requirments.txt /app/

RUN pip install --no-cache-dir -r requirments.txt

COPY . /app/

CMD ["python", "main.py"]

