FROM ubuntu:18.04
MAINTAINER Efa-GmbH <team@efa-gmbh.com>

# Copy installation scripts in
COPY *.sh ./

RUN ./01_setup.sh
RUN ./02_dependencies.sh
RUN ./03_extras.sh
RUN ./04_libnice.sh
RUN ./05_libsrtp.sh
RUN ./06_usrsctp.sh
RUN ./07_websockets.sh
RUN ./08_mqtt.sh
RUN ./09_rabbitmq.sh
RUN ./10_janus.sh
RUN ./11_copy_config.sh

COPY apache2/*.conf ./
# Install and prepare apache
RUN ./apache.sh

# Clone, build and install the gateway
RUN ./janus.sh
# Put configs in place
COPY conf/*.cfg /opt/janus/etc/janus/

# Declare the ports we use
EXPOSE 80 7088 7089 8088 8089 8188

# Define the default start-up command
CMD ./startup.sh