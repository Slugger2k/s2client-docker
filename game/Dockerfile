FROM ubuntu:16.04
MAINTAINER jrepp@blizzard.com

# Update the image with required build packages
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y \
    net-tools \
    htop  \
    python-minimal \
    software-properties-common

# Please run ./download.sh && ./unpack.sh before running this Dockerfile
# Add the 3.16.1
# https://blzdistsc2-a.akamaihd.net/Linux/SC2.4.10.zip
WORKDIR /SC2/4.10
ADD downloads/4.10 .

# Expose the API listen port
EXPOSE 12000

# Start SC2 with API listen port
ENTRYPOINT [ "/SC2/4.10/StarCraftII/Versions/Base75689/SC2_x64", \
    "-listen", \
    "0.0.0.0", \
    "-port", \
    "12000" ]
