import 'package:covid_19_indonesia/model/covid_indonesia.dart';
import 'package:covid_19_indonesia/network/api.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Indonesia extends StatefulWidget {
  @override
  _IndonesiaState createState() => _IndonesiaState();
}

class _IndonesiaState extends State<Indonesia> {
  Future<List<CovidIndo>> covid;

  Container _text(String name) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        name,
        style: GoogleFonts.solway(fontWeight: FontWeight.w600, fontSize: 15),
      ),
    );
  }

  Divider _divider() {
    return Divider(height: 10, color: Colors.grey, indent: 10, endIndent: 10);
  }

  Container _text2(String name, FontWeight fontWeight, Color color) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Text(
        name,
        style: GoogleFonts.scada(
            fontWeight: fontWeight, fontSize: 15, color: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CovidIndo>>(
      future: API.fetchCovidIndo(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: 250,
                margin: EdgeInsets.all(10),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      _text(snapshot.data[index].provinsi),
                      _divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _text2("Kasus Sembuh", FontWeight.w400, Colors.black),
                          _text2(snapshot.data[index].kasusSemb.toString(),
                              FontWeight.w700, Colors.green)
                        ],
                      ),
                      _divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _text2(
                              "Kasus Positif", FontWeight.w400, Colors.black),
                          _text2(snapshot.data[index].kasusPosi.toString(),
                              FontWeight.w700, Colors.blueAccent)
                        ],
                      ),
                      _divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _text2(
                              "Kasus Meninggal", FontWeight.w400, Colors.black),
                          _text2(snapshot.data[index].kasusMeni.toString(),
                              FontWeight.w700, Colors.red)
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
