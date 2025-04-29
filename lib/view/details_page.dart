import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details_page extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  final BuildContext context;
  details_page({
    required this.img,
    required this.title,
    required this.price,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/candle$img.jpg",
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          IconButton(
            padding: EdgeInsets.only(left: 20, top: 40),
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.close, size: 35),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ILLUM"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("$title", style: TextStyle(fontSize: 28)),
                              Text(
                                "\$$price",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("SIZE"),
                                    SizedBox(height: 5),
                                    Text(
                                      "16 OZ",
                                      style: TextStyle(fontSize: 22),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("QTY"),
                                    SizedBox(height: 5),
                                    Text("1", style: TextStyle(fontSize: 22)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Divider(thickness: 1.5),
                          ListTile(
                            leading: Text(
                              "Details",
                              style: TextStyle(fontSize: 18),
                            ),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add, color: Colors.black),
                            ),
                          ),
                          Divider(thickness: 1.5),
                          ListTile(
                            leading: Text(
                              "Shipping & Returns",
                              style: TextStyle(fontSize: 18),
                            ),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add, color: Colors.black),
                            ),
                          ),
                          Divider(thickness: 1.5),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: Icon(Icons.favorite),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            shape: BoxShape.circle,
                          ),
                        ),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width / 4,
                            ),
                            backgroundColor: Colors.pink[200],
                          ),
                          onPressed: () {},
                          icon: Icon(Icons.shopping_cart, color: Colors.black),
                          label: Text(
                            "Add to cart",
                            style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
