FROM alpine:3.19

# Just a simple "app" for now
CMD ["sh", "-c", "echo 'Hello from ci-demo Docker container!' && sleep 300"]
