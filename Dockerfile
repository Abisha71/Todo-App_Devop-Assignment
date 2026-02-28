# Latest stable alpine 
FROM nginx:stable-alpine

# 1. Non-root user with explicit UID/GID (best practice)
RUN addgroup -S -g 1001 appgroup && \
    adduser -S -u 1001 -G appgroup appuser

# 2. Remove defaults
RUN rm -rf /usr/share/nginx/html/* /etc/nginx/conf.d/default.conf

# 3. Copy your static Todo app files
COPY src/ /usr/share/nginx/html/

# 4. Permissions fix BEFORE user switch (very important)
RUN chown -R appuser:appgroup /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html && \
    mkdir -p /var/cache/nginx /var/run /var/log/nginx && \
    chown -R appuser:appgroup /var/cache/nginx /var/run /var/log/nginx

# 5. Switch to non-root
USER 1001:1001

EXPOSE 80

# 6. HEALTHCHECK (solid)
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
    CMD wget --no-verbose --tries=1 --spider http://localhost:80/ || exit 1

# 7. Run nginx foreground
CMD ["nginx", "-g", "daemon off;"]