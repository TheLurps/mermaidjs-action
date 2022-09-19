FROM ghcr.io/mermaid-js/mermaid-cli/mermaid-cli:9.1.6

ENTRYPOINT ["mmdc", "--input", "$1"]
