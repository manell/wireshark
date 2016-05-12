# wireshark
Wireshark docker container

Wireshark is a useful tool for debugging your docker networking issues. If something is going wrong, just run this container inside any docker host and you will be able to view all traffic between docker containers.

This container can be executed in both local or remote machine.

## Running in your own host:

```$ docker run -ti --net=host --privileged -v $HOME:/root:ro -e XAUTHORITY=/root/.Xauthority -e DISPLAY=$DISPLAY manell/wireshark```

## Running in a remote host: 

First, ssh into the remote machine.

```$ ssh -X user@host```

Then, just run the same command.

```$ docker run -ti --net=host --privileged -v $HOME:/root:ro -e XAUTHORITY=/root/.Xauthority -e DISPLAY=$DISPLAY manell/wireshark```

_Don't forget to specify the ```-X``` flag to enable the X11 forwarding._
