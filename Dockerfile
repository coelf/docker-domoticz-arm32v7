#
# Dockerfile for Rpi-Domoticz
#
#
# Base image.
FROM arm32v7/debian

RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends \
  libcurl4-gnutls-dev \
  libusb-dev \
  libpython3-dev \
  unzip wget cron libudev-dev && \  
  apt-get clean && \
  apt-get autoclean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
  wget --no-check-certificate https://releases.domoticz.com/releases/release/domoticz_linux_armv7l.tgz -O /tmp/domoticz_linux_armv7l.tgz && \
mkdir -p /root/domoticz && \
tar xf /tmp/domoticz_linux_armv7l.tgz -C /root/domoticz


# Expose port.
EXPOSE 8080

CMD ["/root/domoticz/domoticz", "-www", "8080"]

