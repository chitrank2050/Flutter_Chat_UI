import 'package:chat_ui/models/story_model.dart';
import 'package:chat_ui/models/chat_model.dart';

List<StoryModel> getStories() {
  List<StoryModel> stories = new List();

  stories = [
    StoryModel(
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
        'Michele'),
    StoryModel(
        'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
        'Ben'),
    StoryModel(
        'https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1581&q=80',
        'Summer'),
    StoryModel(
        'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
        'Denver'),
    StoryModel(
        'https://images.unsplash.com/photo-1523307730650-594bc63f9d67?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=564&q=80',
        'Berlin'),
  ];

  return stories;
}

List<ChatModel> getChats() {
  List<ChatModel> chats = new List();
  chats = [
    ChatModel(
      imgUrl:
          'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      name: 'Denver',
      lastMessage: 'Oh hello there.',
      lastSeenTime: '5m',
      haveUnreadMessages: true,
      unreadMessages: 2,
    ),
    ChatModel(
      imgUrl:
          'https://images.unsplash.com/photo-1523307730650-594bc63f9d67?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=564&q=80',
      name: 'Berlin',
      lastMessage: 'Ut at dolor quis odio consequat varius. Integer ac leo.',
      lastSeenTime: '5m',
      haveUnreadMessages: false,
      unreadMessages: 0,
    ),
    ChatModel(
      imgUrl:
          'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      name: 'Ben',
      lastMessage: 'Ut at dolor quis odio consequat varius. Integer ac leo.',
      lastSeenTime: '5m',
      haveUnreadMessages: true,
      unreadMessages: 1,
    ),
  ];
  return chats;
}
