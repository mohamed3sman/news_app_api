import 'package:creativa_task/model/source_mpdel.dart';

class Article {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Article(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});
  factory Article.fromJson(Map<String, dynamic> data) {
    return Article(
      source: Source.fromJson(data['source']),
      author: data['author'] as String,
      title: data['title'] as String,
      description: data['description'] as String,
      url: data['url'] as String,
      urlToImage: data['urlToImage'] as String,
      publishedAt: data['publishedAt'] as String,
      content: data['content'] as String,
    );
  }
}
