import 'package:chat_ui/data/data.dart';
import 'package:chat_ui/models/story_model.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<StoryModel> stories = new List();
  @override
  void initState() {
    super.initState();
    stories = getStories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        color: Color(0xff171719),
        child: Column(
          children: <Widget>[
            Row(
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
            SizedBox(height: 50.0),
            Container(
              alignment: Alignment.centerLeft,
              height: 140.0,
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
          ],
        ),
      ),
    );
  }
}

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
                borderRadius: BorderRadius.circular(40.0),
                child: Image.network(
                  imgUrl,
                  height: 80.0,
                  width: 80.0,
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
