import 'package:flutter/material.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('StatfulWidget'),
        ),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatefulWidget {
  @override
  _SimpleWidgetState createState() => new _SimpleWidgetState();
}

class _SimpleWidgetState extends State<SimpleWidget> {
  int _count = 0;

  void _handleButton() {
    setState(() {
      _count++;
    });
  }

  void _clearButton() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_count'),
            RaisedButton(
              onPressed: () {
                _handleButton();
              },
              child: Text('Click me'),
            ),
            RaisedButton(
              onPressed: () {
                _clearButton();
              },
              child: Text('Clear counter'),
            )
          ]),
    );
  }
}
