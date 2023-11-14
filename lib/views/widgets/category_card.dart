import 'package:flutter/material.dart';
import 'package:newsapp/models/category_models.dart';

class CategorymodelView extends StatelessWidget {
  const CategorymodelView({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.fill)),
        child: Center(
          child: Text(
            category.categoryName,
            style: TextStyle(color: Colors.amber, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
