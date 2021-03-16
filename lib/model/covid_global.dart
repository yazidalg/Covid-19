class Global {
  Global attributes;

  Global({this.attributes});

  Global.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new Global.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes.toJson();
    }
    return data;
  }
}

class CovidGlobal {
  int oBJECTID;
  String countryRegion;
  int lastUpdate;
  int lat;
  int long;
  int confirmed;
  int deaths;
  Null recovered;
  Null active;

  CovidGlobal(
      {this.oBJECTID,
      this.countryRegion,
      this.lastUpdate,
      this.lat,
      this.long,
      this.confirmed,
      this.deaths,
      this.recovered,
      this.active});

  CovidGlobal.fromJson(Map<String, dynamic> json) {
    oBJECTID = json['OBJECTID'];
    countryRegion = json['Country_Region'];
    lastUpdate = json['Last_Update'];
    lat = json['Lat'];
    long = json['Long_'];
    confirmed = json['Confirmed'];
    deaths = json['Deaths'];
    recovered = json['Recovered'];
    active = json['Active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['OBJECTID'] = this.oBJECTID;
    data['Country_Region'] = this.countryRegion;
    data['Last_Update'] = this.lastUpdate;
    data['Lat'] = this.lat;
    data['Long_'] = this.long;
    data['Confirmed'] = this.confirmed;
    data['Deaths'] = this.deaths;
    data['Recovered'] = this.recovered;
    data['Active'] = this.active;
    return data;
  }
}
