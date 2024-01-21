# Use an official Ubuntu base image
FROM ubuntu:latest

# Create a directory 'app' in the container
RUN mkdir /app

# Copy your JavaCC file, input file, and JavaCC distribution to the '/app' directory in the container
COPY chess-2-8-6.apk /app/
COPY poetry.lock /app/
COPY pyproject.toml /app/

# Set the working directory
WORKDIR /app

# Install necessary tools and dependencies
#RUN apt-get update && apt-get install -y curl nodejs python3.11 android-tools-adb

# Install Appium
#RUN npm install -g appium

# Install Poetry
#RUN curl -sSL https://install.python-poetry.org | python3 -

# Print versions for verification
#RUN appium --version && adb version && poetry --version && python3 --version

# CMD to start Appium
# CMD ["appium", "--address", "0.0.0.0", "--port", "4723"]
CMD ["ls"]
