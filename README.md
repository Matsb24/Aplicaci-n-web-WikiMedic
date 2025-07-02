# WikiMedic

WikiMedic es una aplicación web diseñada para gestionar y consultar información médica de manera ágil y sencilla. Está pensada para facilitar la búsqueda de afecciones, registro de información relevante y acceso rápido a datos clínicos en un entorno intuitivo y amigable.

## Contexto General

El propósito principal de WikiMedic es servir como una herramienta de apoyo para estudiantes, profesionales y cualquier persona interesada en acceder o gestionar información médica. La aplicación permite:

- Buscar afecciones médicas y obtener información relevante.
- Acceso centralizado y seguro a datos clínicos.

WikiMedic está construida utilizando **Spring Boot** para el backend y **Thymeleaf** para la generación de vistas dinámicas. La base de datos utilizada es **MySQL** (por medio de XAMPP para desarrollo local).

---

## Ejecución en local

Sigue estos pasos para ejecutar la aplicación en tu máquina:

### 1. Pre-requisitos

- **Java 21** o superior
- **Maven**
- **XAMPP** (para MySQL)
- (Opcional) **Git** para clonar el repositorio

### 2. Configura la base de datos

1. Abre el **Panel de Control de XAMPP** y asegúrate de que el servicio **MySQL** está en ejecución.
2. Crea una base de datos llamada `medicamentos` (puedes usar phpMyAdmin).
3. Ajusta las credenciales de conexión en el archivo `src/main/resources/application.properties` si es necesario.

### 3. Clona el repositorio

```bash
git clone https://github.com/Matsb24/Aplicaci-n-web-WikiMedic.git
cd backend
```

### 4. Compila y ejecuta el backend

```bash
mvn clean install
mvn spring-boot:run
```

La aplicación estará disponible en [http://localhost:8080](http://localhost:8080)

El Front estará ejecutándose en:
	Buscar medicina por affeción: "http://localhost:8080/buscar-afecciones"
	Buscar medicina por affeción: "http://localhost:8080/buscar-medicinas"

