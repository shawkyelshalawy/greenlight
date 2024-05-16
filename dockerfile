FROM golang:1.22-bullseye as builder

WORKDIR $GOPATH/src/greenlight

COPY . .

RUN go mod download
RUN go mod verify


RUN go build -o bin/greenlight ./cmd/api
#RUN go build -o bin/obu obu/main.go

FROM gcr.io/distroless/static-debian11


COPY --from=builder /go/src/greenlight/bin . 

CMD ["greenlight"] 