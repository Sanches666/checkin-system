FROM nocodb/nocodb:latest

# Переменные окружения для работы приложения
ENV NC_DB="sqlite:///usr/app/data/noco.db"
ENV NC_AUTH_JWT_SECRET="render-secret-key-2026-super-secure"
ENV NC_DISABLE_TELE="true"
ENV PORT=8080

# Создаём директорию для базы данных
RUN mkdir -p /usr/app/data

# Открываем порт для Render
EXPOSE 8080

# Команда запуска NocoDB
CMD ["node", "docker/main.js"]
