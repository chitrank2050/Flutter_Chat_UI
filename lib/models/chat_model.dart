class ChatModel {
  String imgUrl;
  String name;
  String lastMessage;
  int unreadMessages;
  bool haveUnreadMessages;
  String lastSeenTime;

  ChatModel({
    this.imgUrl,
    this.name,
    this.lastMessage,
    this.unreadMessages,
    this.haveUnreadMessages,
    this.lastSeenTime,
  });
}
