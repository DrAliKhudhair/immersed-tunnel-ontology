FROM openjdk:11-jre-slim

# Install fonts and other dependencies for headless operation
RUN apt-get update && apt-get install -y \
    fontconfig \
    fonts-dejavu-core \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy Widoco from scripts directory
COPY scripts/widoco.jar /app/widoco.jar

# Copy the entrypoint script from scripts directory
COPY scripts/entrypoint.sh /
RUN chmod +x /entrypoint.sh

# Set Java system properties for headless operation
ENV JAVA_OPTS="-Djava.awt.headless=true"

ENTRYPOINT ["/entrypoint.sh"]