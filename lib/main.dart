import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() {
  runApp(
    MaterialApp(
      home: App(),
    ),
  );
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: MaterialButton(
          color: Colors.white,
          child: Text('Download'),
          onPressed: () {
            var url = 'https://wallpaperaccess.com/download/space-nebula-45416';
            html.AnchorElement anchorElement =
                new html.AnchorElement(href: url);
            anchorElement.download = url;
            anchorElement.click();
          },
        ),
      ),
    );
  }
}
