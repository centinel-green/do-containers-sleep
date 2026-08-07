FROM caddy:builder AS builder

# Inject the Sablier plugin into Caddy
RUN xcaddy build \
    --with github.com/acouvreur/sablier/plugins/caddy

FROM caddy:latest
COPY --from=builder /usr/bin/caddy /usr/bin/caddy