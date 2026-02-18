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
          Image.asset('images/doc.png', height: 80),
          Image.network('https://dummyjson.com/image/500x200', height: 80),
          Text('data'),
          Image.network('https://dummyjson.com/image/300x200', height: 80),
        ],
      ),
    );
  }
}
