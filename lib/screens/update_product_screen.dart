import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductScreen extends StatelessWidget {
  UpdateProductScreen({super.key});

  static String id = 'update_product_screen';
  String? productTitle, description, image;
  double? price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Product'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CustomTextField(
            onChanged: (data) {
              productTitle = data;
            },
            hintText: 'Product Title',
          ),
          CustomTextField(
            inputType: TextInputType.number,
            onChanged: (data) {
              price = double.parse(data);
            },
            hintText: 'Product Price',
          ),
          CustomTextField(
            onChanged: (data) {
              description = data;
            },
            hintText: 'Product Description',
          ),
          CustomTextField(
            onChanged: (data) {
              image = data;
            },
            hintText: 'Product image',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: 'Update',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
