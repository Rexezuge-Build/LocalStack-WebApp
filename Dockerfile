FROM localstack/localstack:stable

FROM scratch

COPY --from=0 / /

EXPOSE 4566 4510-4559 5678

WORKDIR /opt/code/localstack/

# HEALTHCHECK --interval=10s --start-period=15s --retries=5 --timeout=5s CMD .venv/bin/localstack status services --format=json

VOLUME /var/lib/localstack

ENTRYPOINT ["docker-entrypoint.sh"]
