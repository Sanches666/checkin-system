FROM node:18-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Устанавливаем NocoDB глобально
RUN npm install -g nocodb

# Создаём директорию для данных
RUN mkdir -p /app/data

# Переменные окружения по умолчанию
ENV NC_DB="sqlite:///app/data/noco.db"
ENV NC_DISABLE_TELE="true"
ENV PORT=8080

# Открываем порт
EXPOSE 8080

# Запускаем NocoDB
CMD ["nocodb"]
