FROM docker:dind

RUN apk add --no-cache python

RUN	wget https://bootstrap.pypa.io/get-pip.py && \
	python get-pip.py						  && \
	rm get-pip.py							  && \
	pip install docker-compose
