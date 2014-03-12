== vbatts/fedora-varnish

Varnish caching daemon

== vcl

get your vcl and mount it into place

	docker run -i -t -P -v $(pwd)/foo.vcl:/srv/default.vcl vbatts/fedora-varnish

== secret

A secret is generated if /srv/secret is not present. To use your own, bind mount one in.

	docker run -i -t -P -v $(pwd)/secret:/srv/secret vbatts/fedora-varnish


