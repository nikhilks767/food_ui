// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:food_ui/dummy_Db.dart';
import 'package:food_ui/view/custom_heading/custom_heading.dart';
import 'package:food_ui/view/home_screen/widgets/best_seller_card.dart';
import 'package:food_ui/view/home_screen/widgets/category_list.dart';
import 'package:food_ui/view/product_details_screen/product_details_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        toolbarHeight: 110,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Container(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.5)),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              ),
              SizedBox(width: 5),
              Text(
                "Search",
                style: TextStyle(color: Colors.white, fontSize: 13),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 180,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      color: Colors.yellow.shade600.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Image.asset("assets/veg_basket.png", scale: 2.8),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "organic",
                              style: GoogleFonts.cabin(
                                  color: Colors.brown.shade700,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 40,
                                  letterSpacing: 1),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "vegetables",
                              style: GoogleFonts.cabin(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 23),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              CustomHeading(text: "Category", trailText: "View all"),
              SizedBox(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: DummyDb.category.length,
                  itemBuilder: (context, index) => CategoryList(
                    text: DummyDb.category[index]["fruit"],
                    textCategory: DummyDb.category[index]["text"],
                  ),
                  separatorBuilder: (context, index) => SizedBox(width: 15),
                ),
              ),
              SizedBox(height: 15),
              CustomHeading(text: "Best Seller", trailText: "View all"),
              SizedBox(height: 25),
              SizedBox(
                height: 230,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetailsScreen(),
                            ));
                      },
                      child: BestSellerCard()),
                  separatorBuilder: (context, index) => SizedBox(width: 15),
                ),
              ),
              SizedBox(height: 25),
              CustomHeading(text: "Featured Details", trailText: "View all"),
            ],
          ),
        ),
      ),
    );
  }
}
