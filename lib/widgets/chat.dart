import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final bool isByMe;
  final String message;

  ChatTile({
    @required this.isByMe,
    @required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.0),
      alignment: isByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomLeft: isByMe ? Radius.circular(30.0) : Radius.circular(0),
            bottomRight: isByMe ? Radius.circular(0) : Radius.circular(30.0),
          ),
          color: isByMe ? Color(0xffff410f) : Color(0xfffff3f1),
        ),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 2 / 3,
          ),
          child: Text(
            message,
            style: TextStyle(
              color: isByMe ? Colors.white : Color(0xff650000),
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
