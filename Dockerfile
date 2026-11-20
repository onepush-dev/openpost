# OpenPost on Railway: the official getopenpost/openpost image (AGPL-3.0), unmodified binary.
# Only change: run as root so the app can write to Railway's root-owned /data volume.
# Upstream already bakes OPENPOST_PORT=8080, EDITION=selfhost, sqlite at /data/db and media at /data/media.
FROM ghcr.io/getopenpost/openpost:v7.42.2
LABEL org.opencontainers.image.source="https://github.com/onepush-dev/openpost"
USER root
