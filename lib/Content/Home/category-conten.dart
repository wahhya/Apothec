import 'package:apotech/Page/Product-detail.dart';
import 'package:flutter/material.dart';

class CategoryContent extends StatefulWidget {
  const CategoryContent({super.key});

  @override
  State<CategoryContent> createState() => _CategoryContentState();
}

class _CategoryContentState extends State<CategoryContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      "asset/Home/flat-lay-pills-syringe-with-copy-space 1.png",
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Save extra on",
                        style: TextStyle(
                          color: Color(0xfff1987FB),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Every Order",
                        style: TextStyle(
                          color: Color(0xfff1987FB),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Etiam mollis metus non faucibus . ",
                        style: TextStyle(
                          color: Color(0xfff090F47),
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Diabetic Diet",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Diabet(
                  img: "asset/Category Listing/Diabetes Care/img1.png",
                  desc: "Sugar Substitute",
                ),
                Diabet(
                  img: "asset/Category Listing/Diabetes Care/img2.png",
                  desc: "Juices & Vinegars",
                ),
                Diabet(
                  img: "asset/Category Listing/Diabetes Care/img3.png",
                  desc: "Vitamins Medicines",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Text(
              "All Product",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetail()));
                        },
                        child: Product(
                          img: "asset/Category Listing/All Product/img1.png",
                          imageoffer:
                              "asset/Category Listing/All Product/sale.png",
                          desc: "Accu-check ActiveTest Strip",
                          harga: "Rp 112.000",
                          star: "4.2",
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetail()));
                        },
                        child: Product(
                          img: "asset/Category Listing/All Product/img2.png",
                          imageoffer:
                              "asset/Category Listing/All Product/offer.png",
                          desc: "Omron HEM-8712 BP Monitor",
                          harga: "Rp 150.000",
                          star: "4.2",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetail()));
                        },
                        child: Product(
                          img: "asset/Category Listing/All Product/img3.png",
                          imageoffer:
                              "asset/Category Listing/All Product/offer.png",
                          desc: "Accu-check ActiveTest Strip",
                          harga: "Rp 112.000",
                          star: "4.2",
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetail()));
                        },
                        child: Product(
                          img: "asset/Category Listing/All Product/img4.png",
                          imageoffer:
                              "asset/Category Listing/All Product/offer.png",
                          desc: "Omron HEM-8712 BP Monitor",
                          harga: "Rp 150.000",
                          star: "4.2",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget Diabet({required img, desc}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Container(
        height: 200,
        width: 140,
        decoration: BoxDecoration(
            color: Colors.black12.withOpacity(.1),
            borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: [
            Transform.scale(
              scaleX: 1.3,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image.asset("$img"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Text(
                "$desc",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Product({required img, desc, imageoffer, harga, star}) {
    return Container(
      width: 200,
      height: 280,
      decoration: BoxDecoration(
        color: Colors.black12.withOpacity(.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Center(
                child: Transform.scale(
                  scaleX: 1.7,
                  scaleY: 1.25,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      "$img",
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Image.asset("$imageoffer"),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 20,
            ),
            child: Text(
              "$desc",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "$harga",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Flexible(
                  child: Container(
                width: 70,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2,
                      ),
                      child: Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "$star",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
