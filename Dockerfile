FROM alpine:latest AS build
RUN apk update
RUN apk --no-cache add bash build-base cmake make libstdc++ libstdc++-dev
WORKDIR /app
COPY . .
RUN mkdir out && cd out && cmake .. && make
FROM alpine:latest
WORKDIR /app
COPY --from=build /app/out/hello-world /app
ENTRYPOINT ["./hello-world"]

