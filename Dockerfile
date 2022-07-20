FROM golang:1.18-alpine as build-stage
WORKDIR /app
COPY . .
RUN go build -o /app/pipelinetest main.go

FROM scratch as run-stage
COPY --from=build-stage /app/pipelinetest /pipelinetest
CMD ["/pipelinetest"]