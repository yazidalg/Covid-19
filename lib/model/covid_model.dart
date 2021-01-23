//Indonesia, per Provinsi

class CovidIndo {
  CovidIndo({
    this.fid,
    this.kodeProvi,
    this.provinsi,
    this.kasusPosi,
    this.kasusSemb,
    this.kasusMeni,
  });

  int fid;
  int kodeProvi;
  String provinsi;
  int kasusPosi;
  int kasusSemb;
  int kasusMeni;

  factory CovidIndo.fromJson(Map<String, dynamic> json) => CovidIndo(
    fid: json["FID"],
    kodeProvi: json["Kode_Provi"],
    provinsi: json["Provinsi"],
    kasusPosi: json["Kasus_Posi"],
    kasusSemb: json["Kasus_Semb"],
    kasusMeni: json["Kasus_Meni"],
  );

  Map<String, dynamic> toJson() => {
    "FID": fid,
    "Kode_Provi": kodeProvi,
    "Provinsi": provinsi,
    "Kasus_Posi": kasusPosi,
    "Kasus_Semb": kasusSemb,
    "Kasus_Meni": kasusMeni,
  };
}


//Global

class CovidGlobal {
  CovidGlobal({
    this.objectid,
    this.countryRegion,
    this.lastUpdate,
    this.lat,
    this.long,
    this.confirmed,
    this.deaths,
    this.recovered,
    this.active,
  });

  int objectid;
  String countryRegion;
  int lastUpdate;
  double lat;
  double long;
  int confirmed;
  int deaths;
  int recovered;
  int active;

  factory CovidGlobal.fromJson(Map<String, dynamic> json) => CovidGlobal(
    objectid: json["OBJECTID"],
    countryRegion: json["Country_Region"],
    lastUpdate: json["Last_Update"],
    lat: json["Lat"] == null ? null : json["Lat"].toDouble(),
    long: json["Long_"] == null ? null : json["Long_"].toDouble(),
    confirmed: json["Confirmed"],
    deaths: json["Deaths"],
    recovered: json["Recovered"] == null ? null : json["Recovered"],
    active: json["Active"],
  );

  Map<String, dynamic> toJson() => {
    "OBJECTID": objectid,
    "Country_Region": countryRegion,
    "Last_Update": lastUpdate,
    "Lat": lat == null ? null : lat,
    "Long_": long == null ? null : long,
    "Confirmed": confirmed,
    "Deaths": deaths,
    "Recovered": recovered == null ? null : recovered,
    "Active": active,
  };
}
