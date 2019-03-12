install:
	git clone https://github.com/paicoin/paicoin.git src && \
	cd src && \
	git checkout tags/v0.17.1 -b local && \
	./autogen.sh && \
	./configure --without-gui --disable-zmq --disable-upnp-default --disable-tests --disable-wallet && \
	make install
