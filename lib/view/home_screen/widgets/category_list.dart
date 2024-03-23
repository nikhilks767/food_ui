import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList(
      {super.key, required this.text, required this.textCategory});
  final String text;
  final String textCategory;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.teal.shade100.withOpacity(0.5)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              Text(
                textCategory,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.7)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
