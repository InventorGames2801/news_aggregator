import 'package:flutter/material.dart';
import 'package:my_news/domain/entities/news_article.dart';
import 'package:my_news/presentation/pages/news_detail_page/news_detail_page.dart';

class NewsListPage extends StatefulWidget {
  const NewsListPage({super.key});

  @override
  State<NewsListPage> createState() {
    return _NewsListPageState();
  }
}

class _NewsListPageState extends State<NewsListPage> {
  final List<NewsArticle> _articles = [
    NewsArticle(
      id: '1',
      title: 'Flutter 4.0 анонсирован!',
      summary:
          'Новая версия фреймворка обещает еще больше производительности...',
      imageUrl: 'https://dummyjson.com/image/800x200',
      publishedAt: DateTime.now(),
      sourceName: 'Flutter Dev',
    ),
    NewsArticle(
      id: '2',
      title: 'Рынок IT в России 2026',
      summary:
          'Спрос на мобильных разработчиков вырос на 40% за последний год...',
      imageUrl: 'https://dummyjson.com/image/800x200',
      publishedAt: DateTime.now().subtract(const Duration(hours: 2)),
      sourceName: 'Habr',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Новости')),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 8),
        itemCount: _articles.length,
        itemBuilder: (context, index) {
          final article = _articles[index];
          return NewsCard(
            article: article,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => NewsDetailPage(newsArticle: article),
              ),
            ),
          );
        },
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final NewsArticle article;
  final VoidCallback onTap;
  const NewsCard({super.key, required this.onTap, required this.article});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
