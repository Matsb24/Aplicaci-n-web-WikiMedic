Proyecto: WikiMedic - Aplicación Web de Recomendación de Medicamentos

Descripción:
Esta aplicación web permite recomendar medicamentos en función de los síntomas seleccionados por el usuario. Está dividida en dos partes principales:
- Frontend desarrollado en React.
- Backend desarrollado en Spring Boot.

Estructura del repositorio:
- /frontend → Contiene todo el código de la interfaz de usuario (React + Axios + archivos .env).
- /backend  → Contiene el backend (Spring Boot, controladores REST, lógica de negocio y conexión con BD).

Cómo ejecutar localmente:
1. Clonar el repositorio.
2. Instalar dependencias en frontend con `npm install`.
3. Crear el archivo `.env` en `/frontend` y agregar: REACT_APP_API_URL=http://localhost:8080/api

4. Desde `/frontend`, correr `npm start`.
5. Desde `/backend`, correr la aplicación Spring Boot (desde el IDE o con `./mvnw spring-boot:run`).
6. Acceder a la web en: http://localhost:3000

Notas adicionales:
- No subir la carpeta `node_modules` ni archivos `.env` al repositorio.
- Se recomienda usar Java 17 para máxima compatibilidad con Spring Boot.
- Antes del despliegue, ejecutar `npm audit fix` para reducir vulnerabilidades.
- En producción, se puede servir el build de React desde Spring Boot copiando la carpeta `/build` a `/backend/src/main/resources/static`.

