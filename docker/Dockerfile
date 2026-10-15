FROM busybox:1.36.1
LABEL org.opencontainers.image.title="samplab-url-tools" \
      org.opencontainers.image.description="Offline URL builder for SampLab Pro, a browser audio and MIDI tool suite. Not an official SDK." \
      org.opencontainers.image.url="https://samplab.pro/" \
      org.opencontainers.image.source="https://github.com/wangneo276-lgtm/samplab-url-tools" \
      org.opencontainers.image.version="0.1.0" \
      org.opencontainers.image.licenses="MIT"
COPY docker/cli.sh /usr/local/bin/samplab-url-tools
RUN chmod +x /usr/local/bin/samplab-url-tools
ENTRYPOINT ["/usr/local/bin/samplab-url-tools"]
