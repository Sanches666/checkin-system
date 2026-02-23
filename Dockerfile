version: '3.8'

services:
  nocodb:
    image: nocodb/nocodb:latest
    restart: always
    ports:
      - "8080:8080"
    environment:
      NC_DB: "sqlite:///usr/app/data/noco.db"
      NC_AUTH_JWT_SECRET: "your-super-secret-jwt-token-2026"
      NC_PUBLIC_URL: "${PUBLIC_URL}"
      NC_DISABLE_TELE: "true"
    volumes:
      - nocodb_data:/usr/app/data

volumes:
  nocodb_data:
