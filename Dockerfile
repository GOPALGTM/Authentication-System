# Pull base image
FROM python:3.10.6
RUN pip install --upgrade pip

# Set work directory
WORKDIR /

# Install dependencies
COPY . .
RUN pip install -r requirement.txt
EXPOSE 8000
CMD python3 manage.py runserver 0.0.0.0:8000