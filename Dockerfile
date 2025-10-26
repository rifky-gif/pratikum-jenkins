# Gunakan image Python
FROM python:3.11-slim

# Set folder kerja di container
WORKDIR /app

# Copy file requirements.txt
COPY requirements.txt .

# Install dependency Flask
RUN pip install --no-cache-dir -r requirements.txt

# Copy seluruh project ke container
COPY . .

# Expose port
EXPOSE 5000

# Jalankan aplikasi Flask
CMD ["python", "app.py"]
