FROM nocodb/nocodb:0.111.0

ENV NC_DB=sqlite3:///usr/app/data/noco.db
ENV NC_DISABLE_TELE=true

EXPOSE 8080

CMD ["node", "docker/main.js"]
