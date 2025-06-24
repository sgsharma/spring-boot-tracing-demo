FROM alpine:3.19

# Install curl
RUN apk add --no-cache curl

# Copy the load generator script
COPY load-generator.sh /load-generator.sh
RUN chmod +x /load-generator.sh

CMD ["/load-generator.sh"] 