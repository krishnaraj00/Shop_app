import 'package:flutter/material.dart';
import 'package:my_app/view/details_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        bottomNavigationBar: Container(
          height: 70,
          color: Colors.white,

          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(blurRadius: 20, spreadRadius: 1, color: Colors.grey),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildContainerBottomnav(Icons.person),
                buildContainerBottomnav(Icons.shopping_bag),
                buildContainerBottomnav(Icons.home,isSelected: true ),
                buildContainerBottomnav(Icons.favorite),
                buildContainerBottomnav(Icons.settings),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.all(10),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 15),
                Text("Shop ", style: TextStyle(fontSize: 28, letterSpacing: 2)),
                Text(
                  "Application",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildContainer("Home deco", isSelected: true),
                buildContainer("Bath & body"),
                buildContainer("Beauty"),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 1,
                      blurRadius: 15,
                    ),
                  ],
                ),

                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildColumn("Candles", isSelected: true),
                          buildColumn("Vases"),
                          buildColumn("Bins"),
                          buildColumn("Floral"),
                          buildColumn("Deco"),
                        ],
                      ),
                      SizedBox(height: 20),
                      mycandle(),
                      Linebar(),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: Row(
                          children: [
                            Text(
                              "Holiday special",
                              style: TextStyle(fontSize: 24),
                            ),
                            Spacer(),
                            Text(
                              "View all",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            buildbottomContainer("1"),
                            buildbottomContainer("2"),
                            buildbottomContainer("3"),
                            buildbottomContainer("4"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainerBottomnav(IconData icon, {isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.pink[100] : Colors.white,
        shape: BoxShape.circle,
        boxShadow:
            isSelected
                ? [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ]
                : [],
      ),
      height: 50,
      width: 50,
      child: Icon(icon, color: isSelected ? Colors.white : Colors.black),
    );
  }

  Container buildbottomContainer(String img) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      height: 150,
      width: 240,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: SizedBox(
              height: 150,
              width: 100,
              child: Image.asset(
                "assets/images/candle$img.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Cocunt Milk Bath"),
                Text("16 oz", style: TextStyle(color: Colors.grey)),
                Spacer(),
                Text(
                  "\$28",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column buildColumn(String text, {bool isSelected = false}) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.grey,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 5),
        if (isSelected)
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
      ],
    );
  }

  Container buildContainer(String text, {bool isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isSelected ? Colors.pinkAccent[100] : Colors.grey[300],
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: isSelected ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}

class mycandle extends StatelessWidget {
  const mycandle({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 20),
          buildColumnwithrow("1", "Elemental Tin Candle", "30",context),

          buildColumnwithrow("2", "Summer Candle", "40",context),
          buildColumnwithrow("3", "Winder Candle", "25",context),
          buildColumnwithrow("4", "Dummy Candle", "35",context),
        ],
      ),
    );
  }

  GestureDetector buildColumnwithrow(String img, String title, String price,BuildContext context) {
    return GestureDetector(
        onTap:() {
          Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return details_page(img: img,title: title,price: price,context: context,);
                },));
        },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 220,
              width: 160,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/candle$img.jpg", // fixed typo: 'assests' -> 'assets'
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("\$ $price", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

class Linebar extends StatelessWidget {
  const Linebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: MediaQuery.of(context).size.width,

      margin: EdgeInsets.only(left: 40),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Container(
        height: 5,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
