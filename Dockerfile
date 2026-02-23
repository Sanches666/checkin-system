FROM nocodb/nocodb:latest

ENV NC_AUTH_JWT_SECRET="render-secret-key-2026"
ENV NC_DISABLE_TELE="true"
ENV PORT=8080

RUN mkdir -p /usr/app/data

EXPOSE 8080

CMD ["node", "docker/main.js"]
