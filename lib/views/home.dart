import 'package:flutter/material.dart';

import 'package:chat_ui/widgets/storyTile.dart';
import 'package:chat_ui/widgets/chatListTile.dart';
import 'package:chat_ui/data/data.dart';
import 'package:chat_ui/models/story_model.dart';
import 'package:chat_ui/models/chat_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<StoryModel> stories = new List();
  List<ChatModel> chats = new List();

  @override
  void initState() {
    super.initState();
    stories = getStories();
    chats = getChats();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171719),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(height: 120.0),
                    Text(
                      'Messages',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Color(0xff444446),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50.0),
              ///////
              // Stories
              //////
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                height: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int i) {
                    return StoryTile(
                      imgUrl: stories[i].imgUrl,
                      username: stories[i].username,
                    );
                  },
                  itemCount: stories.length,
                ),
              ),
              SizedBox(height: 16.0),
              ///////
              // Chats
              ///////
              ///
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 40.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Recent',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.more_vert,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: chats.length,
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (BuildContext context, int i) {
                        return ChatListTile(
                          imgUrl: chats[i].imgUrl,
                          haveUnreadMessages: chats[i].haveUnreadMessages,
                          lastMessage: chats[i].lastMessage,
                          lastSeenTime: chats[i].lastSeenTime,
                          name: chats[i].name,
                          unreadMessages: chats[i].unreadMessages,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
