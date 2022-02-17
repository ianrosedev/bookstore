# Pull base image
FROM python:3.10

# Set enviorment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY requirements.txt /code/
RUN pip3 install --upgrade pip &&\
    pip3 install -r requirements.txt

# Copy Project
COPY . /code/