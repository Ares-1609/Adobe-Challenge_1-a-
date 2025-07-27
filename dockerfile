FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy everything into the container
COPY . .

# Create input and output folders (if not already present)
RUN mkdir -p /app/input /app/output

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set default command to run your app
CMD ["python", "main.py"]
