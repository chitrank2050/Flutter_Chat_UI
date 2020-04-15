import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/models/story_model.dart';
import 'package:chat_ui/models/chat_model.dart';

List<StoryModel> getStories() {
  List<StoryModel> stories = new List();

  stories = [
    StoryModel(
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
      'Michele',
    ),
    StoryModel(
      'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      'Ben',
    ),
    StoryModel(
      'https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1581&q=80',
      'Summer',
    ),
    StoryModel(
      'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      'Denver',
    ),
    StoryModel(
      'https://images.unsplash.com/photo-1523307730650-594bc63f9d67?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=564&q=80',
      'Berlin',
    ),
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
    ChatModel(
      imgUrl:
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
      name: 'Michelle',
      lastMessage: 'Ut at dolor quis odio consequat varius. Integer ac leo.',
      lastSeenTime: '2m',
      haveUnreadMessages: false,
      unreadMessages: 0,
    ),
    ChatModel(
      imgUrl:
          'https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1581&q=80',
      name: 'Summer',
      lastMessage: 'Ut at dolor quis odio consequat varius. Integer ac leo.',
      lastSeenTime: '0m',
      haveUnreadMessages: false,
      unreadMessages: 1,
    ),
  ];
  return chats;
}

List<MessageModel> getMessages() {
  List<MessageModel> messages = new List();

  messages = [
    MessageModel(
      isByMe: false,
      message: 'Pellentesque eget nunc.',
    ),
    MessageModel(
      isByMe: false,
      message:
          'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.',
    ),
    MessageModel(
      isByMe: true,
      message: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
    ),
    MessageModel(
      isByMe: true,
      message:
          'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst.',
    ),
    MessageModel(
      isByMe: true,
      message:
          'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.',
    ),
    MessageModel(
      isByMe: false,
      message:
          'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.',
    ),
    MessageModel(
      isByMe: false,
      message: 'Nullam porttitor lacus at turpis.',
    ),
    MessageModel(
      isByMe: true,
      message:
          'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.',
    ),
    MessageModel(
      isByMe: true,
      message:
          'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.',
    ),
    MessageModel(
      isByMe: false,
      message:
          'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.',
    ),
    MessageModel(
      isByMe: false,
      message: 'Morbi vel lectus in quam fringilla rhoncus.',
    ),
  ];

  return messages;
}
