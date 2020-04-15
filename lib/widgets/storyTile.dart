import 'package:flutter/material.dart';

class StoryTile extends StatelessWidget {
  final String imgUrl;
  final String username;

  StoryTile({@required this.imgUrl, @required this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Column(
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
              SizedBox(height: 12.0),
              Text(
                username,
                style: TextStyle(
                  color: Color(0xff78778a),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[SizedBox(width: 25.0)],
          ),
        ],
      ),
    );
  }
}
