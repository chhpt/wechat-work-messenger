#!/bin/sh
set -eu

if [ -z "$BOT_KEY" ]; then
  echo "Please set the BOT_KEY secret."
  exit 1
fi

if [ -z "$POST_MESSAGE" ]; then
  echo "Please set the post markdown message."
  exit 1
fi

curl "https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=$BOT_KEY" \
  -H "Content-Type: application/json" \
  -d "
   {
        "msgtype": "markdown",
        "markdown": {
            "content": "$POST_MESSAGE"
        }
   }"
