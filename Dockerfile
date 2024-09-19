# Use the official Eclipse Mosquitto image as the base
FROM eclipse-mosquitto:latest

# Set the maintainer label
LABEL maintainer="johnscode <iotagg@johnscode.com>"

# Expose MQTT port
EXPOSE 1883

# Expose MQTT over WebSockets port (if needed)
EXPOSE 9001

# Copy custom configuration file (if you have one)
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Set the entrypoint to run Mosquitto
ENTRYPOINT ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]