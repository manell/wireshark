FROM ubuntu

RUN apt-get update
RUN apt-get install wireshark -y

CMD ["wireshark"]