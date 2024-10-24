# Usa una imagen base de OpenJDK 17
FROM openjdk:17-jdk-slim AS builder

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de construcción (incluyendo el build.gradle y otros archivos necesarios)
COPY . .

# Ejecuta el comando de Gradle para construir el proyecto
RUN ./gradlew build --no-daemon

# Etapa final
FROM openjdk:17-jdk-slim

# Copia el archivo JAR construido en la etapa anterior
COPY --from=builder /app/build/libs/app.jar app.jar

# Comando para ejecutar el archivo JAR
ENTRYPOINT ["java", "-jar", "app.jar"]

