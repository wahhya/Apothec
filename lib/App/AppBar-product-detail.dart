import 'package:flutter/material.dart';

class BarProductDetail extends StatefulWidget {
  const BarProductDetail({super.key});

  @override
  State<BarProductDetail> createState() => _BarProductDetailState();
}

class _BarProductDetailState extends State<BarProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 50,
                ),
              ),
            ),
            Flexible(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.black,
                      size: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.shopify_outlined,
                      color: Colors.black,
                      size: 40,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
