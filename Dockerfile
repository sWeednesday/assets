FROM caddy:2-alpine
COPY . /srv
RUN printf ':{$PORT}\nroot * /srv\nfile_server browse\n' > /etc/caddy/Caddyfile
