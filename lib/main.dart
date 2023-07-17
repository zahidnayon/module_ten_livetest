import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    title: 'News Feed Demo',
    home: NewsFeed(),
  ));
}

class NewsFeed extends StatefulWidget {
  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    final Orientation deviceOrientation = MediaQuery.of(context).orientation;
    final bool isPortrait = deviceOrientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Container(
              width: isPortrait ? 80 : 120,
              height: isPortrait ? 80 : 120,
              child: Image.network(
                'https://cdn.pixabay.com/photo/2018/02/02/17/29/nature-3125912_1280.jpg',
                fit: BoxFit.cover,
              ),
            ),
            title: Text('News Article'),
            subtitle: Text('Author Name'),
            onTap: () {
              // Handle tap on the article
            },
          );
        },
      ),
    );
  }
}


