# Use the official Python image with version 3.8
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run ml_app.py when the container launches
CMD ["python", "ml_app.py"]
