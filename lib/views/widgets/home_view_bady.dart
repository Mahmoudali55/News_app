// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newsapp/views/widgets/CategoriesListView%20.dart';
import 'package:newsapp/views/widgets/NewsTile.dart';

class HomeViewBady extends StatelessWidget {
  const HomeViewBady({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: CategoriesListView(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 32),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: NewsTile(),
          ),
        ),
      ],
    );
  }
}
