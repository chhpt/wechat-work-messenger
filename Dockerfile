FROM debian:9.6-slim

LABEL "com.github.actions.name"="WeChat Work Messenger"
LABEL "com.github.actions.description"="Post WeChat Work messages from your own bot"
LABEL "com.github.actions.icon"="bell"
LABEL "com.github.actions.color"="green"

LABEL version="1.0.0"
LABEL repository="https://github.com/chhpt/wechat-work-messenger.git"
LABEL homepage="https://github.com/chhpt/wechat-work-messenger.git"
LABEL maintainer="wuyiqing <cwuyiqing@gmail.com>"

RUN apt-get update && apt-get install -y curl

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
