# Schritte zum Erstellen des Docker-Images und Starten des Containers
## 1. Projekt klonen oder Verzeichnis erstellen
Lade das Projekt von GitHub/GitLab herunter oder erstelle das Projektverzeichnis manuell:

```
git clone <URL_des_Repositories>   # Falls du es von GitHub/GitLab geklont hast
cd Mini-Projekt-M169               # Wechsel ins Projektverzeichnis
```
## 2. Docker-Image erstellen
Erstelle das Docker-Image mit dem folgenden Befehl:

```
docker build -t mini-projekt-m169-apache .
```
## 3. Container starten
- Starte den Docker-Container mit dem erstellten Image:
```
docker run -d -p 8080:8080 \
  -v ./html:/usr/local/apache2/htdocs \
  -v ./logs:/usr/local/apache2/logs \
  --name apache-server mini-projekt-M169-apache
```
## 4. Webseite im Browser aufrufen
- Öffne deinen Webbrowser und gehe zu http://localhost:8080, um die Webseite zu sehen, die im Docker-Container läuft.
