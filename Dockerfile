# Usa una imagen base de OpenJDK 17
FROM openjdk:17-jdk-slim

# Copia el archivo JAR en el contenedor
COPY app/build/libs/app.jar app.jar

# Comando para ejecutar el archivo JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
