FROM python:3.9.20-alpine

RUN apk update

WORKDIR /app
EXPOSE 9090

COPY . .

RUN pip install -r requirements.txt



CMD ["flet", "run", "app", "--port", "9090", "--web"]