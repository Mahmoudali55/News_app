import 'package:dio/dio.dart';
import 'package:newsapp/models/articel_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=c9b36de6baeb4e879eaa04db7f5facfb');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> areicels = jsonData['articles'];

    List<ArticleModel> areicelsList = [];
    for (var article in areicels) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
      );
      areicelsList.add(articleModel);
    }
    print(areicelsList);
    return areicelsList;
  }
}
