FROM docker:1.12-dind

RUN apk add --no-cache python

RUN	wget https://bootstrap.pypa.io/get-pip.py	&& \
	python get-pip.py							&& \
	rm get-pip.py								&& \
	pip --no-cache-dir install --upgrade pip	&& \
	pip --no-cache-dir install docker-compose docker-compose-swarm-mode

ENTRYPOINT ["dockerd-entrypoint.sh", "--registry-mirror=https://9nsci3dq.mirror.aliyuncs.com"]