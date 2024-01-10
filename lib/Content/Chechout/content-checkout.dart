import 'package:apotech/Page/Succes/succes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentCheckout extends StatefulWidget {
  const ContentCheckout({Key? key}) : super(key: key);

  @override
  State<ContentCheckout> createState() => _ContentCheckoutState();
}

class _ContentCheckoutState extends State<ContentCheckout> {
  String deliveryAddress = "Default Address";
  String selectedPaymentMethod = "Credit card";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1500,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          color: Colors.grey,
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
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              "Delivery Address",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: 350,
              height: 120,
              decoration: BoxDecoration(
                color: Color(0xfffFFFFFF),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 0.2,
                    color: Colors.black,
                  )
                ],
              ),
              child: RadioListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Home"),
                        Icon(Icons.edit),
                      ],
                    ),
                    Text(
                      "(205) 555-024",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "1786 Wheeler Bridge",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                value: "Home ",
                groupValue: deliveryAddress,
                onChanged: (value) {
                  setState(() {
                    deliveryAddress = value.toString();
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: 350,
              height: 120,
              decoration: BoxDecoration(
                color: Color(0xfffFFFFFF),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 0.2,
                    color: Colors.black,
                  )
                ],
              ),
              child: RadioListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Office"),
                        Icon(Icons.edit),
                      ],
                    ),
                    Text(
                      "(205) 555-024",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "1786 w Dallas St underfield",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                value: "Home ",
                groupValue: deliveryAddress,
                onChanged: (value) {
                  setState(() {
                    deliveryAddress = value.toString();
                  });
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                        "Add Addres",
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              "Payment method",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: 350,
              height: 500,
              decoration: BoxDecoration(
                color: Color(0xfffFFFFFF),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 0.2,
                    color: Colors.black,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Payment(
                    img: "asset/Checkout/img1.png",
                    title: "Credit card",
                  ),
                  Payment(
                    img: "asset/Checkout/img2.png",
                    title: "Paypal",
                  ),
                  Payment(
                    img: "asset/Checkout/img3.png",
                    title: "Google pay",
                  ),
                  Payment(
                    img: "asset/Checkout/img4.png",
                    title: "Apple pay",
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Succes()));
                },
                child: Text(
                  "Pay Now Rp 185.000",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xfff4157FF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Payment({required img, title}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Color(0xfffFFFFFF),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 0.2,
                  color: Colors.black,
                ),
              ],
            ),
            child: Image.asset("$img"),
          ),
        ),
        Text(
          "$title",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(), // Spacer untuk memastikan RadioButton di sebelah kanan
        Radio(
            value: "Credit card",
            groupValue: selectedPaymentMethod,
            onChanged: (value) {
              setState(() {
                selectedPaymentMethod = value.toString();
              });
            }),
      ],
    );
  }
}
