FROM alpine:3.7

LABEL maintainer="Naufal Aldy Pradana"
LABEL company="Naufaldy Std." version="1.0" description="This is a test image" website="https://naufaldystudio.com"

RUN mkdir hello
# ADD untuk memasukkan file dari host add/text/*.txt ke dalam container saat build
ADD text/*.txt hello/

CMD cat "hello/world.txt"