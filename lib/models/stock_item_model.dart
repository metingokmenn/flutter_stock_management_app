import 'dart:convert';

class StockItem {
  int? id;
  String? brand;
  String? code;
  String? name;
  int? quantity;
  String? unit;

  StockItem({
    this.id,
    this.brand,
    this.code,
    this.name,
    this.quantity,
    this.unit,
  });

  factory StockItem.fromJson(String str) => StockItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StockItem.fromMap(Map<String, dynamic> json) => StockItem(
        id: json["id"],
        brand: json["brand"],
        code: json["code"],
        name: json["name"],
        quantity: json["quantity"],
        unit: json["unit"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "brand": brand,
        "code": code,
        "name": name,
        "quantity": quantity,
        "unit": unit,
      };
}
