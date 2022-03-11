import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ImageExample(),
      ),
    );
  }
}

class ImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      children: <Widget>[
        ListTile(title: Text('Image from asset:')),
        Expanded(
          child: Card(
            child: Image.asset('assets/flutter.gif'),
          ),
        ),
        Divider(),
        ListTile(title: Text('Image from FadeInImage.assetNetwork:')),
        Expanded(
          child: Card(
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/loading.gif',
              image:
                  'https://images.freeimages.com/images/large-previews/4ad/coloured-pencils-1427682.jpg',
            ),
          ),
        ),
        Divider(),
        ListTile(title: Text('image from network:')),
        Expanded(
          child: Image.network(
            'https://i.stack.imgur.com/vXYLh.gif',
            scale: 1.0,
            height: 300,
          ),
        ),
      ],
    );
  }
}
