import 'package:apotech/Page/category-listing.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Container(
                width: 320,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ),
                    Text(
                      "Search Medicine & Healthcare Products",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoryListing()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Top Categories",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Categories(
                    img: "asset/Home/img1.png",
                    desc: "Dental",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Categories(
                    img: "asset/Home/img2.png",
                    desc: "Wellnes",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Categories(
                    img: "asset/Home/img3.png",
                    desc: "Homeo",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Categories(
                    img: "asset/Home/img4.png",
                    desc: "Eye Care",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Categories(
                    img: "asset/Home/img5.png",
                    desc: "Skin & Hair",
                  ),
                ],
              ),
            ),
          ),
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
                    vertical: 25,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Deals Of The day",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "More",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Deals(
                    img: "asset/Home/imgDeals1.png",
                    desc: "Accu-check Active Test Strip",
                    harga: "Rp 120.000",
                    star: "4.2",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Deals(
                    img: "asset/Home/imgdeals2.png",
                    desc: "Omron HEM-8712 BP Monitor",
                    harga: "Rp 150.000",
                    star: "4.4",
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Featured Brands",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Brands(
                  img: "asset/Home/image 15.png",
                  desc: "Himalaya Wellness",
                ),
                Brands(
                  img: "asset/Home/image 16.png",
                  desc: "Accu-Chek",
                ),
                Brands(
                  img: "asset/Home/image 17.png",
                  desc: "Vlcc",
                ),
                Brands(
                  img: "asset/Home/image 18.png",
                  desc: "Protinex",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget Categories({required img, desc}) {
    return Container(
      width: 90,
      height: 138,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: [
          Image.asset(
            "$img",
            width: 80,
          ),
          Text(
            "$desc",
            style: TextStyle(
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget Deals({required img, desc, harga, star}) {
    return Container(
      width: 194,
      height: 270,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(28.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Transform.scale(
              scaleX: 1.8,
              scaleY: 1.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "$img",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 10,
            ),
            child: Text("$desc"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                  ),
                  child: Text(
                    "$harga",
                    style: TextStyle(
                      fontSize: 9,
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
                      padding: const EdgeInsets.symmetric(horizontal: 2),
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

  Widget Brands({required img, desc}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("$img"),
            Text(
              "$desc",
              style: TextStyle(
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
