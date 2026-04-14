FROM python:3.13-slim

WORKDIR /app

COPY req.txt .

RUN pip install --no-cache-dir -r req.txt
COPY . .

EXPOSE 80

CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:app"]