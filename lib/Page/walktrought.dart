import 'package:apotech/Page/daftar.dart';
import 'package:flutter/material.dart';

class Walktrough extends StatefulWidget {
  const Walktrough({super.key});

  @override
  State<Walktrough> createState() => _WalktroughState();
}

class _WalktroughState extends State<Walktrough> {
  int currentIndex = 0;
  final PageController controller = PageController();
  List<String> img = [
    "asset/Walktrough/img1.png",
    "asset/Walktrough/img2.png",
    "asset/Walktrough/img1.png",
    "asset/Walktrough/img2.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: PageView.builder(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index % img.length;
                  });
                },
                itemCount: img.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Image.asset(img[index % img.length]),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "View and Buy",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Medicine Online",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < img.length; i++)
                  Indicator(currentIndex == i)
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Daftar()));
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        controller.jumpToPage(currentIndex + 1);
                      },
                      child: Text("Next")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget Indicator(bool select) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: select ? 12 : 8,
      width: select ? 12 : 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: select ? Colors.black : Colors.grey,
      ),
    );
  }
}
