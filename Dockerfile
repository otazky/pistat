# Use an official Python runtime as a parent image
FROM python:3.6.9-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Run app.py when the container launches. 
# Parametr -u je pro unbuffered output prikazu print()
CMD ["python", "-u", "src/pistat.py"]
