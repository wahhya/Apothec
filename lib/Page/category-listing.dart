import 'package:apotech/App/AppBar-category.dart';
import 'package:apotech/Content/Home/category-conten.dart';
import 'package:flutter/material.dart';

class CategoryListing extends StatefulWidget {
  const CategoryListing({super.key});

  @override
  State<CategoryListing> createState() => _CategoryListingState();
}

class _CategoryListingState extends State<CategoryListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            AppbarCategory(),
            CategoryContent(),
          ],
        ),
      ),
    );
  }
}
