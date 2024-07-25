import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class PostAddProduct {
  Future<ProductModel> postAddProduct({
    required String title,
    required String price,
    required String description,
    required String category,
    required String image,
  }) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': description,
      'category': category,
      'image': image
    });
    return ProductModel.fromJson(data);
  }
}
