FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py .
COPY test_app.py .
COPY templates ./templates
EXPOSE 8080
CMD ["python", "app.py"]
