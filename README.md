# Dockerized Freeplane

## Abstract

This is a docker for Freeplane.

[Freeplane](https://www.interactivebrokers.com/en/index.php?f=14099&ns=T#tws-software) is a mind mapping software package.

The container is based on Ubuntu (bionic) and includes the necessary Java dependencies.

## Basic usage

Begin by checking out the Dockerfile and building the container:

```shell
git clone https://github.com/wk/docker-freeplane.git
sudo docker build -t freeplane docker-freeplane
```

You will typically want to launch the container locally on a host with a X server. Certain arguments must be passed to the container for X authentication and display to succeed. This has been tested on Ubuntu and Debian hosts:

First, authorize X socket connectivity:

```shell
xhost +local:root;
```

Then, launch the container:

```shell
sudo docker run --name=freeplane --detach=true -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/snd freeplane
```

After the initial invocation, you can re-start the container as following:

```shell
sudo docker start freeplane
```

The container will stop when the application terminates.
