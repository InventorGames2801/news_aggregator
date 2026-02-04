import 'package:intl/intl.dart';

//Везде использован final, это обеспечивает неизменяемость данных

class NewsArticle {
  final String id;
  final String title;
  final String summary; //Краткое содержание
  final String imageUrl;
  final DateTime publishedAt;
  final String sourceName; //Автор новости (РБК, Коммерсантъ и тд)

  NewsArticle({
    required this.id,
    required this.title,
    required this.summary,
    required this.imageUrl,
    required this.publishedAt,
    required this.sourceName,
  });

  //написал сам, либо можно использовать пакет timeago

  String get timeAgo {
    final difference = DateTime.now().difference(publishedAt);

    if (difference.inDays >= 1) {
      return Intl.plural(
        difference.inDays,
        locale: 'ru',
        one: '${difference.inDays} день назад',
        few: '${difference.inDays} дня назад',
        other: '${difference.inDays} дней назад',
      );
    } else if (difference.inHours >= 1) {
      return '${difference.inHours} часов назад';
    } else if (difference.inMinutes >= 1) {
      return '${difference.inMinutes} минут назад';
    } else {
      return '${difference.inSeconds} секунд назад';
    }
  }
}
