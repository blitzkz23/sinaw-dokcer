FROM alpine:3.7

LABEL maintainer="Naufal Aldy Pradana"
LABEL company="Naufaldy Std." version="1.0" description="This is a test image" website="https://naufaldystudio.com"

RUN mkdir hello
# Beda COPY dengan ADD adalah COPY hanya bisa memasukkan file dari host ke dalam container (copas), sementara ADD bisa memasukkan dari sumber url dan bisa auto ekstrak
# Namun best practicenya tetap menggunakan COPY kalau bisa
COPY text/*.txt hello/

CMD cat "hello/naufal.txt"