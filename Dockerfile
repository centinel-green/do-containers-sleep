FROM caddy:builder AS builder

# caddy doesn't come with the sablier plugin by default, need to build it
RUN xcaddy build \
    --with github.com/acouvreur/sablier/plugins/caddy

FROM caddy:latest
COPY --from=builder /usr/bin/caddy /usr/bin/caddy