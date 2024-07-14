# Use a basic Linux image
FROM ubuntu:20.04

# Install system dependencies and Python 3.9
RUN apt-get update && \
    apt-get install -y python3 python3-fontforge python3-pip

# Install Python dependencies
RUN pip install opencv-python

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Command to run the FastAPI application
CMD ["python3", "test1.py"]