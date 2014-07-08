== xterm contianer!

== Building

	$> make build

Since the contianer maps user name and UID into the image, the Dockerfile.sh is used to generate the Dockerfile.

== Running

	$> make run

This cobbles together a docker run command to connect the container to your host's Xorg server.


== Example


![make run](http://vbatts.fedorapeople.org/docker/docker-xterm.png)

