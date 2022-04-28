import 'package:air_pollution/openmap.dart';
import 'package:air_pollution/openmap_api.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _key = 'api key';
  late Future<AirPollution> futureAirPollution;

  @override
  void initState() {
    super.initState();
    // requet once
    futureAirPollution = fetchAirPollution();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('poll')),
        body: Container(
          child: FutureBuilder<AirPollution>(
              future: futureAirPollution,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.toString());
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
              }),
        ));
  }
}
