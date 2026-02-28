FROM nginx:alpine

# Create non-root user
RUN addgroup -S appgroup && \
    adduser -S appuser -G appgroup

# Create required nginx dirs and set ownership BEFORE switching user
RUN mkdir -p /var/log/nginx \
             /var/cache/nginx/client_temp \
             /var/cache/nginx/proxy_temp \
             /var/cache/nginx/fastcgi_temp \
             /var/cache/nginx/uwsgi_temp \
             /var/cache/nginx/scgi_temp \
             /tmp/nginx && \
    chown -R appuser:appgroup /var/log/nginx \
                              /var/cache/nginx \
                              /tmp/nginx && \
    chmod -R 755 /var/log/nginx /var/cache/nginx /tmp/nginx

# Remove default files
RUN rm -rf /usr/share/nginx/html/*

# Copy static files and set ownership
COPY src/ /usr/share/nginx/html/
RUN chown -R appuser:appgroup /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html

# Switch to non-root
# USER appuser 

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD wget --no-verbose --tries=1 --spider http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]