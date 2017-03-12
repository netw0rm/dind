FROM docker:17.03-dind

COPY entrypoint.sh /usr/local/bin/
RUN apk add --no-cache python
RUN	wget https://bootstrap.pypa.io/get-pip.py	&& \
	python get-pip.py				&& \
	rm get-pip.py					&& \
	pip --no-cache-dir install --upgrade pip	&& \
	pip --no-cache-dir install docker-compose docker-compose-swarm-mode

ENTRYPOINT ["entrypoint.sh", "--registry-mirror=https://9nsci3dq.mirror.aliyuncs.com"]
