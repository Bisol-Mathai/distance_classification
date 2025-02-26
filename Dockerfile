# Use Python 3.11 as the base image
FROM python:3.11

# Set the working directory inside the container
WORKDIR /app

# Copy all files from your project to the container
COPY . .

# Install dependencies
RUN pip install numpy pandas scikit-learn wandb

# Run your script when the container starts
CMD ["python", "distance_classification.py"]