FROM ghcr.io/mermaid-js/mermaid-cli/mermaid-cli:9.1.6

USER root
RUN apk add --no-cache --update \
    bash
USER mermaidcli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
