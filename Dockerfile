FROM python:3.13-slim

# Set working directory
WORKDIR /app

# Copy only requirements first (for better caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the application
COPY . .

# Expose port (make sure your app uses same port)
EXPOSE 80

# Run application
CMD ["python", "app.py"]