import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String lastMessage;
  final int unreadMessages;
  final bool haveUnreadMessages;
  final String lastSeenTime;

  ChatTile({
    @required this.imgUrl,
    @required this.name,
    @required this.lastMessage,
    @required this.unreadMessages,
    @required this.haveUnreadMessages,
    @required this.lastSeenTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(bottom: 30.0),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.network(
              imgUrl,
              height: 60.0,
              width: 60.0,
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
    );
  }
}
