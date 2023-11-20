import 'package:dio/dio.dart';

import 'package:gokfen_stock_app/models/stock_item_model.dart';

class ProductService {
  Map<String, dynamic> data = {};
  Dio dio = Dio();

  Future<List<StockItem>> getAllItems() async {
    try {
      var response = await Dio().get('localhost:8080/rest/products');

      List<StockItem> productList = [];
      if (response.statusCode == 200) {
        productList =
            (response.data as List).map((e) => StockItem.fromMap(e)).toList();
      }
      return productList;
    } on DioException catch (e) {
      return Future.error(e.message.toString());
    }
  }
}
