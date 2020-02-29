import 'package:flutter/material.dart';
import 'package:sinproject_test/english_package.dart';
import 'package:sinproject_test/helloworld.dart';
import 'package:sinproject_test/scrolling_list_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SinProject_Test',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('SinProject_Test')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}
Widget _myListView(BuildContext context) {
  return ListView(
    children: ListTile.divideTiles(
      context: context,
      tiles: [
        /////////////////////////////////////////////////////////////////////////////
        ListTile(
          title: Text('Hello World'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Helloworld()));
          },
        ),
        /////////////////////////////////////////////////////////////////////////////
        ListTile(
          title: Text('English Package'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => EnglishPackage()));
          },
        ),
        /////////////////////////////////////////////////////////////////////////////
        ListTile(
          title: Text('Scrolling List View'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => RandomWords()));
          },
        ),
      ],
    ).toList(),
  );
}
