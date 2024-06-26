# Uygulama için JDK gerekli
FROM amazoncorretto:17

# Bizim bu projemizdeki JAR dosyamızın, Docker içinde çalışacağı konumu
ARG JAR_FILE=target/*.jar

# JAR dosyasını root klasörüne bu isimle kopyala
COPY ${JAR_FILE} devops-app.jar

# Linux ortamını güncelle
CMD apt-get update-y

# projenin calisacaği iç port
EXPOSE 8080

# Uygulamamızın çalışmasını sağlıyoruz.
ENTRYPOINT ["java",  "-jar", "/devops-app.jar"]