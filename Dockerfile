FROM python:3.11-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Clone sqlmap
RUN git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git /opt/sqlmap

# Install Python dependencies
WORKDIR /opt/sqlmap
RUN pip install requests urllib3

WORKDIR /opt/sqlmap
CMD ["python", "sqlmap.py", "--help"]
