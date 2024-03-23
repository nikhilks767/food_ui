// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:food_ui/view/checkout_screen/checkout_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        surfaceTintColor: Colors.grey[200],
        title: Text(
          "Product Details",
          style: GoogleFonts.cabin(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height / 2.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Center(
                          child: Image.network(
                            "https://indiasdeal.com/wp-content/uploads/2021/10/Red-Label-Tea-1-kg.jpg",
                            cacheHeight: 180,
                            cacheWidth: 190,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.grey.shade200,
                            ),
                            SizedBox(width: 8),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.grey.shade200,
                            ),
                            SizedBox(width: 8),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.grey.shade200,
                            ),
                            SizedBox(width: 8),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.grey.shade200,
                            ),
                            SizedBox(width: 8),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.grey.shade200,
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Red Label Tea",
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 12),
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Colors.green.shade600),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "4.2",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(width: 8),
                                          Icon(Icons.star,
                                              color: Colors.white, size: 16)
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "96 ratings",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              SizedBox(height: 13),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: "\$12 ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                    text: "\$18 ",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        decorationThickness: 2,
                                        fontSize: 13,
                                        color: Colors.black)),
                                TextSpan(
                                    text: " 5% off",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 12)),
                              ])),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 15,
                      right: 10,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.teal.shade100.withOpacity(0.5),
                        child: Center(
                          child: Icon(
                            Icons.turn_right,
                            color: Colors.green.shade700,
                          ),
                        ),
                      ))
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height / 2.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Text(
                              "Details",
                              style: GoogleFonts.raleway(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey[200],
                        thickness: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Column(
                          children: [
                            Column(
                              children: List.generate(
                                6,
                                (index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 9),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Brand",
                                        style: GoogleFonts.raleway(
                                            color:
                                                Colors.black.withOpacity(0.7)),
                                      ),
                                      SizedBox(
                                          width:
                                              MediaQuery.sizeOf(context).width /
                                                  5),
                                      Text(
                                        "Red Label",
                                        style: GoogleFonts.rem(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "More Details",
                              style: GoogleFonts.raleway(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.teal.shade100.withOpacity(0.5)),
              child: Center(
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.green.shade600,
                ),
              ),
            ),
            SizedBox(width: 15),
            Expanded(
                child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CheckoutScreen()));
              },
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green.shade700),
                child: Center(
                  child: Text(
                    "ADD TO CART",
                    style: GoogleFonts.rem(color: Colors.white),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
