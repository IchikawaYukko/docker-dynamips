FROM	alpine:3.9

RUN	wget https://github.com/GNS3/dynamips/archive/v0.2.21.tar.gz && \
	tar zxf v0.2.21.tar.gz && \
	rm v0.2.21.tar.gz && \
	cd /dynamips-0.2.21 && \
	apk add gcc cmake libelf-dev libpcap-dev make musl-dev linux-headers && \
	mkdir /dynamips-0.2.21/build && \
	cd /dynamips-0.2.21/build && \
	cmake .. && \
	make && \
	make install && \
	rm -rf /dynamips-0.2.21 && \
	apk del gcc cmake make musl-dev linux-headers

ENTRYPOINT ["dynamips"]
