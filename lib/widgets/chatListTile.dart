import 'package:flutter/material.dart';

import 'package:chat_ui/views/chat.view.dart';

class ChatListTile extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String lastMessage;
  final int unreadMessages;
  final bool haveUnreadMessages;
  final String lastSeenTime;

  ChatListTile({
    @required this.imgUrl,
    @required this.name,
    @required this.lastMessage,
    @required this.unreadMessages,
    @required this.haveUnreadMessages,
    @required this.lastSeenTime,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext ctx) => ChatScreen(),
          ),
        );
      },
      child: Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(bottom: 30.0),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.network(
                imgUrl,
                height: 50.0,
                width: 50.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 26.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    lastMessage,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    lastSeenTime,
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  haveUnreadMessages
                      ? Container(
                          width: 30,
                          height: 30,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Color(0xffff410f),
                          ),
                          child: Text(
                            unreadMessages.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
