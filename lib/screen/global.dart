import 'package:covid_19_indonesia/model/covid_global.dart';
import 'package:covid_19_indonesia/network/api.dart';
import 'package:flutter/material.dart';

class Global extends StatefulWidget {
  @override
  _GlobalState createState() => _GlobalState();
}

class _GlobalState extends State<Global> {
  Global _covidGlobal;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _covidGlobal = Global();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      builder: (context, snapshot) {
      if (snapshot.hasData) {
        for (var element in snapshot.data)
          return ListView(children: <Widget>[

          ]);
      }
    });
  }
}
