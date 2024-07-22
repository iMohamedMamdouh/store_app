import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class GetCategoriesService {
  Future<List<ProductModel>> getCategories(
      {required String categoryName}) async {
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/category/$categoryName'),
    );

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      List<ProductModel> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(ProductModel.formJson(data[i]));
      }
      return productsList;
    } else {
      throw Exception(
          'Failed to load products is State: ${response.statusCode}');
    }
  }
}
