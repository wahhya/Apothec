import 'package:apotech/Page/Checkout/checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartContent extends StatefulWidget {
  const CartContent({super.key});

  @override
  State<CartContent> createState() => _CartContentState();
}

class _CartContentState extends State<CartContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "2 items in your cart",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Flexible(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        CupertinoIcons.plus,
                        color: Color(0xfff4157FF),
                      ),
                      Text(
                        "Add More",
                        style: TextStyle(
                          color: Color(0xfff4157FF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Item(
            img: "asset/Cart/img1.png",
            title: "Sugar free gold",
            desc: "bottle of 500 pellets",
            harga: "Rp 25.000",
          ),
          Item(
            img: "asset/Cart/img2.png",
            title: "Sugar free gold",
            desc: "bottle of 500 pellets",
            harga: "Rp 18.000",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.money,
                  size: 30,
                ),
                Text(
                  "1 Coupon applied",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xfff27AE60),
                  ),
                ),
                SizedBox(
                  width: 120,
                ),
                Icon(Icons.cancel),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Text(
              "Payment Summary",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Payment(
            text: "Order Total",
            harga: "Rp 228.800",
          ),
          Payment(
            text: "Items Discount",
            harga: "- Rp 28.800",
          ),
          Payment(
            text: "Coupon Discount",
            harga: "- Rp 15.800",
          ),
          Payment(
            text: "Shipping",
            harga: "Free",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Rp 185.000",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Chechout()));
              },
              child: Text(
                "Place Order @ Rp 185.000",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xfff4157FF),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Item({required img, title, desc, harga}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("$img"),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("$title"),
                  SizedBox(width: 70),
                  Icon(Icons.cancel),
                ],
              ),
              Text(
                "$desc",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "$harga",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfffDFE3FF),
                    ),
                    child: Icon(
                      CupertinoIcons.minus,
                      color: Color(0xfff4157FF),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "1",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfffA0ABFF),
                    ),
                    child: Icon(
                      CupertinoIcons.plus,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget Payment({required text, harga}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$text",
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
          Text(
            "$harga",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
