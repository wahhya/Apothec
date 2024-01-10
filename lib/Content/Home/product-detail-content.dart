import 'package:apotech/Page/cart/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentProductDetail extends StatefulWidget {
  const ContentProductDetail({super.key});

  @override
  State<ContentProductDetail> createState() => _ContentProductDetailState();
}

class _ContentProductDetailState extends State<ContentProductDetail> {
  bool tap = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Sugar Free Gold Low Calories",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Etiam mollis metus non purus ",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Image.asset("asset/Category Listing/All Product/img2.png"),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Rp 56.000 ",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Etiam mollis  ",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Flexible(
                        child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.plus,
                          color: Colors.blueAccent,
                        ),
                        Text(
                          "Add To Chart",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )),
                  )
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
                endIndent: 20,
                indent: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Text("Package Size"),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Package(
                      harga: "Rp 252.000",
                      desc: "500 pellets",
                    ),
                    Package(
                      harga: "Rp 100.000",
                      desc: "110 pellets",
                    ),
                    Package(
                      harga: "Rp 160.000",
                      desc: "300 pellets",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Text(
                  "Product Details",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Text(
                  "Rating and Reviews",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "4.4",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.star,
                                size: 30,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                          Text(
                            "923 Ratings and 257 Reviews",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Rating(
                            rate: "4",
                            persen: "67%",
                          ),
                          Rating(
                            rate: "4",
                            persen: "20%",
                          ),
                          Rating(
                            rate: "3",
                            persen: "7%",
                          ),
                          Rating(
                            rate: "2",
                            persen: "0%",
                          ),
                          Rating(
                            rate: "1",
                            persen: "2%",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Text(
                      "Lorem Hoffman",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Text(
                      "05- oct 2023",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 30,
                          color: Colors.yellow,
                        ),
                        Text("4.2"),
                      ],
                    ),
                    Text(
                      "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: Text(
                    "Go To Chart",
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
        ],
      ),
    );
  }

  Widget Package({required harga, desc}) {
    return InkWell(
      onTap: () {
        setState(() {
          // Toggle the tapped state
          tap = !tap;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color:
                tap ? Colors.orange.shade100 : Colors.black12.withOpacity(.1),
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              color: tap ? Colors.orange : Colors.transparent,
              width: 2.0,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$harga",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: tap ? Colors.orange : Colors.black,
                ),
              ),
              Text(
                "$desc",
                style: TextStyle(
                  fontSize: 15,
                  color: tap
                      ? Colors.orange.withOpacity(.9)
                      : Colors.grey.withOpacity(.9),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Rating({required rate, persen}) {
    return Row(
      children: [
        Text("$rate"),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.star,
          size: 25,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 100,
          child: LinearProgressIndicator(
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            value: 0.7,
            minHeight: 5,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "$persen",
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
