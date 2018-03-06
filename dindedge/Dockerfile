FROM docker:dind

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh				&& \
    apk add --no-cache python curl				&& \
    curl -o get-pip.py https://bootstrap.pypa.io/get-pip.py	&& \
    python get-pip.py							&& \
    rm get-pip.py								&& \
    pip --no-cache-dir install --upgrade pip	&& \
    pip --no-cache-dir install docker-compose

ENTRYPOINT ["entrypoint.sh", "--registry-mirror=https://9nsci3dq.mirror.aliyuncs.com"]
