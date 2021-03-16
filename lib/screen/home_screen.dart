import 'package:covid_19_indonesia/screen/global.dart';
import 'package:covid_19_indonesia/screen/indonesia.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xffF8F8F8),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Covid 19"),
          bottom: TabBar(
            indicatorColor: Colors.blue,
            indicatorWeight: 3,
            tabs: <Widget>[
              Tab(
                text: "Indonesia",
              ),
              Tab(
                text: "Global",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[Indonesia(), Global()],
        ),
      ),
    );
  }
}
