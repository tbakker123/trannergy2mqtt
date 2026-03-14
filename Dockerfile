# Use a lightweight Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file (if you create one) or install directly
# Since the project is small, we can install the main dependency here
RUN pip install --no-cache-dir paho-mqtt

# Copy all project files into the container
COPY . .

# Ensure the config file is in place
# Note: You should have a 'config.py' ready or mapped via volumes
# If you only have 'config.rename.py', you can rename it during build:
# RUN cp config.rename.py config.py

# Run the script
CMD ["python", "trannergy-mqtt.py"]
