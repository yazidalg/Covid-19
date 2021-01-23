import 'package:covid_19_indonesia/model/covid_model.dart';
import 'package:covid_19_indonesia/network/api.dart';
import 'package:covid_19_indonesia/screen/global.dart';
import 'package:covid_19_indonesia/screen/indonesia.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        appBar: AppBar(
          title: Text("Covid 19"),
          bottom: TabBar(
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
          children: <Widget>[
            Indonesia(),
            Global()
          ],
        ),
      ),
    );
  }
}

