# YourGamingDB

Requisitos:
XAMPP Control Panel v3.3.0 https://www.apachefriends.org/es/download.html
NodeJS v18.16.0 https://nodejs.org/en/download (incluye npm)
Tener clonado en una carpeta el repositorio https://github.com/samu3ak/yourgamingdb-web-application
Pasos:
Clonar o descargar el proyecto en una carpeta
Abrir XAMPP e iniciar los servicios de Apache y MySQL.
Dirigirse a la página de phpMyAdmin
Click en la pestaña “Importar” → Seleccionar archivo → Seleccionar el fichero que encontramos en el repositorio clonado/descargado "yourgamingdb-web-application\info_modelo_sql\yourgamingdb.sql" → Click abajo del todo en el botón de “Importar”
Abrir un terminal y entrar en la carpeta “yourgamingdb-web-application” mediante cd o abriendo powershell en la carpeta con shift+click derecho
Una vez dentro, introducir el siguiente comando “npm i”
El siguiente comando a introducir será “npm i nodemon -g”
Por último, ejecutar el comando “npm run dev”
