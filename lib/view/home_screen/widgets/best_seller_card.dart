// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:rate_in_stars/rate_in_stars.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 230,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.teal.shade100.withOpacity(0.5)),
                      child: Center(
                        child: Icon(
                          Icons.favorite_border,
                          size: 18,
                          color: Colors.green.shade500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Center(
                child: Image.network(
                  "https://indiasdeal.com/wp-content/uploads/2021/10/Red-Label-Tea-1-kg.jpg",
                  cacheHeight: 80,
                  cacheWidth: 90,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        RatingStars(
                          rating: 5,
                          editable: true,
                          iconSize: 11,
                        ),
                      ],
                    ),
                    Text(
                      "Red Label Tea Leaf, 1kg",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 10),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "\$12 ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
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
                          style: TextStyle(color: Colors.green, fontSize: 12)),
                    ])),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                color: Colors.green.shade600,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10))),
            child: Center(
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
