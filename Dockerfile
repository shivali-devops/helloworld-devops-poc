FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --nocache-dir -r requirements.txt
COPY . .
EXPOSE 8080
CMD ["python", "app.py"]
