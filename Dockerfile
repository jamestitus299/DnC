FROM ubuntu:22.04

# Install necessary packages for Docker
RUN apt-get update && apt-get install -y \
    docker.io \
    curl \
    && apt-get clean

# Create docker group and user
RUN groupadd docker && usermod -aG docker root

ENTRYPOINT ["sleep", "infinity"]
