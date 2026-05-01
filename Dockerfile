FROM mcr.microsoft.com/playwright/python:v1.44.0-jammy

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Chromium is already installed in the base image
ENV PLAYWRIGHT_BROWSERS_PATH=/ms-playwright

CMD ["python", "scheduler.py"]
