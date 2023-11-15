class StockItem {
  String? id;
  String? name;
  double? quantity;
  bool availability;

  StockItem(
      {required this.id,
      required this.name,
      required this.quantity,
      required this.availability});

  void setAvailability() {
    availability = quantity! <= 0 ? false : true;
  }
}
