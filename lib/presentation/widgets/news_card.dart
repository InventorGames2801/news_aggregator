import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../domain/entities/news_article.dart';

class NewsCard extends StatelessWidget {
  final NewsArticle article;
  final VoidCallback onTap;

  const NewsCard({super.key, required this.article, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ), //Отступы от элементов снаружи
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), //Скругление углов карты
      ),
      clipBehavior:
          Clip.antiAlias, //Обрезка контента, которые выходят за края карты
      child: InkWell(
        onTap: onTap, //Назначаем действие при нажатии
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 180,
              width: double
                  .infinity, //Растягивание картинки на всю ширину карточки
              child: CachedNetworkImage(
                imageUrl: article.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${article.sourceName} • ${article.timeAgo}', //Написать геттер для форматирования 5 минут назад
                    style: TextStyle(color: Color(0xFF2196F3), fontSize: 20),
                  ), //Автор и дата
                  Text(
                    article.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    overflow:
                        TextOverflow.ellipsis, //Обрезает текст и добавляет ...
                    maxLines: 2,
                  ), //Заголовок
                  SizedBox(height: 4),
                  Text(
                    article.summary,
                    style: TextStyle(fontSize: 16),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ), //Краткое содержание
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
