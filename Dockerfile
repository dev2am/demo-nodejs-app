FROM node:20.10.0-alpine3.19 as builder

LABEL author="Tan Nguyen"
LABEL version="1.0.00"
LABEL description="Docker image for Node.js"

# Install build dependencies and needed tools
RUN apk add \
    bash
#    wget \
#    gcc \
#    g++ \
#    make \
#    zlib-dev \
#    libffi-dev \
#    openssl-dev \
#    musl-dev
#    python3  \
#    python3-dev

WORKDIR /app

COPY . .

RUN NODE_ENV=production yarn install

FROM node:20.10.0-alpine3.19

WORKDIR /app
COPY --from=builder /app /app

EXPOSE 3000

CMD ["yarn", "start"]
