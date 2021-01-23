import 'package:covid_19_indonesia/model/covid_model.dart';
import 'package:covid_19_indonesia/network/api.dart';
import 'package:flutter/material.dart';

class Indonesia extends StatefulWidget {
  @override
  _IndonesiaState createState() => _IndonesiaState();
}

class _IndonesiaState extends State<Indonesia> {
  Future<List<CovidIndo>> covid;

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
                    margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                    child: Card(
                      elevation: 8,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(snapshot.data[index].provinsi),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(snapshot.data[index].fid.toString()),
                                Text("Kasus Positif",
                                    style: TextStyle(color: Colors.lightBlue)),
                                Text("Kasus Meninggal",
                                    style: TextStyle(color: Colors.red)),
                                Text("Kasus Sembuh",
                                    style: TextStyle(color: Colors.green)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                  snapshot.data[index].kasusPosi.toString(),
                                  style: TextStyle(color: Colors.lightBlue),
                                ),
                                Text(
                                  snapshot.data[index].kasusMeni.toString(),
                                  style: TextStyle(color: Colors.red),
                                ),
                                Text(
                                  snapshot.data[index].kasusSemb.toString(),
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            )
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
