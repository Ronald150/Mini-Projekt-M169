# Basis-Image mit Apache verwenden
FROM httpd:latest

# Eigene Apache-Konfiguration kopieren
COPY httpd.conf /usr/local/apache2/conf/httpd.conf

# HTML-Dateien in das Apache-Standardverzeichnis kopieren
COPY html /usr/local/apache2/htdocs/

# Exponiere Port 8080
EXPOSE 8080

# Apache starten
CMD ["httpd", "-D", "FOREGROUND"]
