FROM python:3.10.4-slim-bullseye
RUN pip install Django==4.1.5
# Set environment variable
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /

# Install dependencies
COPY . .

EXPOSE 8000
CMD python3 manage.py runserver 0.0.0.0:8000