// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newsapp/views/widgets/CategoriesListView%20.dart';
import 'package:newsapp/views/widgets/NewsTile.dart';
import 'package:newsapp/views/widgets/new_past.dart';

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
        NewsTile()
      ],
    );
  }
}
