FROM ubuntu

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install wireshark -y

CMD ["wireshark"]