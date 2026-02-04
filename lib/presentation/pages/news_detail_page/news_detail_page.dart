import 'package:flutter/material.dart';
import 'package:my_news/domain/entities/news_article.dart';

class NewsDetailPage extends StatelessWidget {
  final NewsArticle newsArticle;

  const NewsDetailPage({super.key, required this.newsArticle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Новость')),
      body: Column(
        children: [
          Text('Тут будет дополнительная информация по ${newsArticle.title}'),
        ],
      ),
    );
  }
}
