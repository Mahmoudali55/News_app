// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newsapp/models/category_models.dart';
import 'package:newsapp/views/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categorymodel = [
    CategoryModel(image: 'assets/img.png', categoryName: 'business'),
    CategoryModel(image: 'assets/img2.jpeg', categoryName: 'entertainment'),
    CategoryModel(image: 'assets/img3.jpeg', categoryName: 'health'),
    CategoryModel(image: 'assets/img4.jpeg', categoryName: 'science'),
    CategoryModel(image: 'assets/img5.jpeg', categoryName: 'sports'),
    CategoryModel(image: 'assets/img6.jpeg', categoryName: 'technology'),
    CategoryModel(image: 'assets/img7.jpeg', categoryName: 'general'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categorymodel.length,
        itemBuilder: ((context, index) {
          return CategorymodelView(category: categorymodel[index]);
        }),
      ),
    );
  }
}
