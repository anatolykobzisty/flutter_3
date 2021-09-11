import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  double _height = 150.0;
  double _width = 150.0;
  var _color = Colors.red;
  bool _resized = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              if (_resized) {
                _resized = false;
                _color = Colors.red;
                _height = 150.0;
                _width = 150.0;
              } else {
                _resized = true;
                _color = Colors.red;
                _height = 300.0;
                _width = 300.0;
              }
            });
          },
          child: Container(
            color: _color,
            child: AnimatedSize(
              curve: Curves.easeIn,
              vsync: this,
              duration: Duration(seconds: 1),
              child: Container(
                width: _width,
                height: _height,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
