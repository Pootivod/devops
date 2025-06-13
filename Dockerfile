FROM python.3.12-slim

WORKDIR /app

COPY requirments.txt

RUN pip install --no-cache-dir -r requirments.txt

COPY . .

CMD ["python", "main.py"]

