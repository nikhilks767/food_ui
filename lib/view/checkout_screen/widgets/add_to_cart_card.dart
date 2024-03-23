// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height / 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Image.network(
                    "https://indiasdeal.com/wp-content/uploads/2021/10/Red-Label-Tea-1-kg.jpg",
                    cacheHeight: 130,
                    cacheWidth: 130,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Red Label Tea Leaf",
                        style: GoogleFonts.cabin(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      SizedBox(height: 12),
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
                            text: " \$18 ",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 2,
                                fontSize: 13,
                                color: Colors.black)),
                        TextSpan(
                            text: "   5% off",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 12,
                            )),
                      ])),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            width: 23,
                            height: 23,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.green,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                "-",
                                style: GoogleFonts.robotoMono(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "1",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 8),
                          Container(
                            width: 23,
                            height: 23,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.green,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                "+",
                                style: GoogleFonts.robotoMono(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
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
                    Icons.delete,
                    size: 20,
                    color: Colors.green.shade700,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
