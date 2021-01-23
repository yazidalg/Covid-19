import 'package:covid_19_indonesia/model/covid_model.dart';
import 'package:covid_19_indonesia/network/api.dart';
import 'package:flutter/material.dart';

class Global extends StatefulWidget {
  @override
  _GlobalState createState() => _GlobalState();
}

class _GlobalState extends State<Global> {
  Future<List<CovidGlobal>> covid;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CovidGlobal>>(
        future: API.fetchCovidGlobal(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(8),
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                        ],)
                      ],
                    ),
                  ),
                ),
              );
            });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
