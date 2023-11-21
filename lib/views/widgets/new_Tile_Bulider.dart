// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/articel_model.dart';
import 'package:newsapp/services/news_services.dart';
import 'package:newsapp/views/widgets/NewsTile.dart';
import 'package:newsapp/views/widgets/error_message.dart';
import 'package:newsapp/views/widgets/loading.dart';

class NewTileBuilder extends StatefulWidget {
  const NewTileBuilder({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<NewTileBuilder> createState() => _NewTileBuilderState();
}

class _NewTileBuilderState extends State<NewTileBuilder> {
  @override
  var future;
  void initState() {
    super.initState();
    future = NewsService(Dio()).getToHeadlines(categeory: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsTile(
              articles: snapshot.data ?? [],
            );
          } else if (snapshot.hasError) {
            return SliverFillRemaining(
              child: ErrorMessage(
                text: ' oops there was an error,try later',
              ),
            );
          } else {
            return SliverFillRemaining(child: loading());
          }
        });
  }
}
