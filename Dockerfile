FROM alpine:latest

# Install common build dependencies
RUN apk add --no-cache build-base

# Install the required runtimes/interpreters
RUN apk add --no-cache \
    python3 \
    nodejs \
    openjdk11 \
    php php-phar php-json php-iconv php-openssl \
    perl \
    lua5.3 \
    R \
    go \
    rust \
    cargo \
    gcc \
    g++

# Install libucontext dependency for Ruby
RUN apk add --no-cache libucontext

# Set working directory
WORKDIR /src

# Copy your 'Hello, World' code files and Makefile
COPY src/* /src

# Set the default command to run the Makefile
CMD ["make", "run"]
