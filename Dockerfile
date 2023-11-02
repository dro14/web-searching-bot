FROM python:3.10.12-slim

RUN apt-get update -y && apt-get install -y \
    firefox-esr \
    gcc\
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "project.py"]
