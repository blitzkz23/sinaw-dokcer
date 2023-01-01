FROM alpine:3.7

LABEL maintainer="Naufal Aldy Pradana"
LABEL company="Naufaldy Std." version="1.0" description="This is a test image" website="https://naufaldystudio.com"

RUN mkdir hello
RUN echo "Hello warudo" > "hello/world.txt"

CMD cat "hello/world.txt"