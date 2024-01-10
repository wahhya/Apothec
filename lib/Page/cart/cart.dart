import 'package:apotech/App/AppBar-cart.dart';
import 'package:apotech/Content/Cart/cart-content.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            AppBarCart(),
            CartContent(),
          ],
        ),
      ),
    );
  }
}
