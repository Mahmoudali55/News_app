// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newsapp/models/articel_model.dart';

import 'package:newsapp/views/widgets/new_past.dart';

class NewsTile extends StatelessWidget {
  NewsTile({
    required this.articles,
    super.key,
  });

  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
            (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: NewPast(
                    articleModel: articles[index],
                  ),
                )));
  }
}
