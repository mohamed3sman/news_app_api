import 'dart:convert';
import 'package:creativa_task/components/custom_list_tile.dart';
import 'package:creativa_task/model/article_model.dart';
import 'package:creativa_task/services/api_service.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService news = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'News App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: FutureBuilder(
          future: news.getArticle(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
            if (snapshot.hasData) {
              List<Article>? articles = snapshot.data;
              return ListView.builder(
                  itemCount: articles!.length,
                  itemBuilder: (context, index) =>
                      CustomListTile(articles[index], context));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
