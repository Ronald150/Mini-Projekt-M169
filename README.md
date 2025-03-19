# Mini-Projekt-M169
## 1. Ins verzeichnis mit den Dateien wechseln
## 2. Images Build
Um das Image zu Bauen disen Befehl verwenden
```
docker build -t mini-projekt-apache .
```

## 3. Container starten
```
docker build -t mini-projekt-apache .
docker run -d -p 8080:8080 \
  -v ./html:/usr/local/apache2/htdocs \
  -v ./logs:/usr/local/apache2/logs \
  --name apache-server mini-projekt-apache
```
