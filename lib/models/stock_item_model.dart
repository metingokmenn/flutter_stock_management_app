import 'dart:convert';

class StockItem {
  String? sno;
  String? marka;
  String? kod;
  String? urun;
  String? miktar;
  String? birim;

  StockItem(
      {this.sno, this.marka, this.kod, this.urun, this.miktar, this.birim});

  factory StockItem.fromJson(String str) => StockItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StockItem.fromMap(Map<String, dynamic> json) => StockItem(
        sno: json["sno"],
        marka: json["marka"],
        kod: json["kod"],
        urun: json["urun"],
        miktar: json["miktar"],
        birim: json["birim"],
      );

  Map<String, dynamic> toMap() => {
        "sno": sno,
        "marka": marka,
        "kod": kod,
        "urun": urun,
        "miktar": miktar,
        "birim": birim,
      };
}
