FROM python:3.11-slim

WORKDIR /app


COPY requirements.txt .
RUN pip install -r requirements.txt


COPY . .

# Expose the port your app runs on
EXPOSE 8080

# Command to run the app (equivalent to Heroku's Procfile)
CMD ["gunicorn", "-w", "4", "-k", "uvicorn.workers.UvicornWorker", "-b", "0.0.0.0:8080", "main:app", "--capture-output", "--log-level=info", "--timeout", "1800", "--keep-alive", "500", "--worker-connections", "1000"]
