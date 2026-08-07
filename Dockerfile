FROM caddy:builder AS builder

# need to build caddy with sablier plugin
RUN xcaddy build \
    --with github.com/sablierapp/sablier-caddy-plugin

FROM caddy:latest
COPY --from=builder /usr/bin/caddy /usr/bin/caddy