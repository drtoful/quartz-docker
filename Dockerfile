FROM node:22 AS builder
WORKDIR /usr/src/app
RUN apt-get install git
RUN git clone https://github.com/jackyzha0/quartz.git .
RUN npm ci

FROM node:22-slim
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app/ /usr/src/app/
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/npx", "quartz"]
