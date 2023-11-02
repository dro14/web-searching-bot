FROM python:3.10.12-slim

RUN apt-get update
RUN apt-get intall wget
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

RUN apt-get install -y \
    fonts-liberation \
    libasound2 \
    libatk-bridge2.0-0 \
    libatk1.0-0 \
    libatspi2.0-0 \
    libcairo2 \
    libcups2 \
    libcurl3-gnutls \
    libdbus-1-3 \
    libdrm2 \
    libegl1 \
    libglib2.0-0 \
    libgtk-3-0 \
    libnspr4 \
    libnss3 \
    libpango-1.0-0 \
    libu2f-udev \
    libx11-6 \
    libxcb1 \
    libxcomposite1 \
    libxdamage1 \
    libxext6 \
    libxfixes3 \
    libxkbcommon0 \
    libxrandr2 \
    xdg-utils \
    libvulkan1 \
    gcc \
    ./google-chrome-stable_current_amd64.deb

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
RUN rm google-chrome-stable_current_amd64.deb

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "project.py"]
