import 'package:flutter/material.dart';

import 'package:chat_ui/data/data.dart';
import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/widgets/chat.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<MessageModel> messages = new List();

  @override
  void initState() {
    super.initState();
    messages = getMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 60.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(45.0),
              child: Image.network(
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
                height: 90.0,
                width: 90.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Michelle',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 5.0),
            Text('5 minutes ago'),
            SizedBox(height: 10.0),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int i) {
                    return ChatTile(
                      message: messages[i].message,
                      isByMe: messages[i].isByMe,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.fromLTRB(16.0, 5.0, 16.0, 20.0),
        width: MediaQuery.of(context).size.width,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Color(0xfff4f5fa),
          ),
          child: Row(
            children: <Widget>[
              Container(
                child: Icon(
                  Icons.more,
                  color: Colors.black54,
                  size: 25,
                ),
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Aa',
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              Container(
                child: Icon(
                  Icons.send,
                  color: Colors.black54,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
