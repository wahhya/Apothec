import 'package:apotech/App/AppBar-product-detail.dart';
import 'package:apotech/Content/Home/product-detail-content.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            BarProductDetail(),
            ContentProductDetail(),
          ],
        ),
      ),
    );
  }
}
