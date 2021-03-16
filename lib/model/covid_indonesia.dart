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