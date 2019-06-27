install:
	git clone https://github.com/projectpai/paicoin.git src && \
	cd src && \
	git checkout be1fecf5becbde794cbbacb8fcf726c2fcaed9c1 -b local && \
	./autogen.sh && \
	./configure --without-gui --disable-zmq --disable-upnp-default --disable-tests --disable-wallet && \
	make install
