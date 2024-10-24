# Usa una imagen base de OpenJDK 17
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia todos los archivos necesarios al contenedor
COPY . .

# Da permisos de ejecución al script gradlew
RUN chmod +x gradlew

# Instala las dependencias y ejecuta la aplicación
CMD ["./gradlew", "bootRun"]


