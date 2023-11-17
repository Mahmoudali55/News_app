import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/articel_model.dart';
import 'package:newsapp/services/news_services.dart';
import 'package:newsapp/views/widgets/NewsTile.dart';

class NewTileBuilder extends StatefulWidget {
  const NewTileBuilder({
    super.key,
  });
  @override
  State<NewTileBuilder> createState() => _NewTileBuilderState();
}

class _NewTileBuilderState extends State<NewTileBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverFillRemaining(child: Center(child: CircularProgressIndicator()))
        : articles.isNotEmpty
            ? NewsTile(
                articles: articles,
              )
            : SliverFillRemaining(
                child: Text(' oops there was an error,try later'),
              );
  }
}
