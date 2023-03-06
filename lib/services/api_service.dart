import 'dart:convert';

import 'package:creativa_task/model/article_model.dart';
import 'package:http/http.dart';

class ApiService {
  final apiUrl =
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=96c7549f51714edc80d8b9d57bae6730';

  Future<List<Article>> getArticle() async {
    Response response = await get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
