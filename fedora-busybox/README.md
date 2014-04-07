

usage
=====

Use this to build a tarball with a static busybox.

	$> docker build -t busybox-build .
	[...]
	$> docker run busybox-build zcat /busybox.tar.gz | docker import - my_busybox 

	
