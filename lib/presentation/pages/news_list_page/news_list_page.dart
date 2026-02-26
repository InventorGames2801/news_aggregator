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
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 0,
      color: colorScheme.surfaceContainerLow,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(24),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              article.imageUrl,
              height: 200,
              color: colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }
}

// ПО СТИЛЯМ СЮДА https://gemini.google.com/app/c5d91601735b3c0f
// ПО НАРАБОТКЕ СЮДА https://aistudio.google.com/prompts/1nprY3VD79Z1F1XPbNX-GrKpYEmStYPA8
