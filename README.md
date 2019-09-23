# Post WeChat Work Messenger

This action wraps the [WeChat Work Bot Post Message API](https://work.weixin.qq.com/help?doc_id=13376) which can be used to post markdown type notification messages.

本 Action 包装了[企业微信机器人发送消息的 API](https://work.weixin.qq.com/help?doc_id=13376)，可以快速发送 Markown 格式的群通知消息。

## 用法

将发送消息的的 key 参数配置到 GitHub Secret 中，并配置发送的 Markdown 消息。

```yaml
- name: Notify WeChat Work
  env:
    BOT_KEY: ${{ secrets.BOT_KEY }}
    POST_MESSAGE: 'Markdown Message'
  uses: chhpt/wechat-work-messenger@v1.0.0
```

## License

基于 [MIT License](LICENSE)。
