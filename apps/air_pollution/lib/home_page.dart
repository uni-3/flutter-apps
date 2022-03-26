import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _key = 'api key';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('poll')),
        body: Container(
          child: FutureBuilder<Map<String, dynamic>>(
              builder: (BuildContext context, AsyncSnapshot snapshot) {
            return Text("main page");
          }),
        ));
  }
}
