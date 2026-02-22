import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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
          SecureDataController(),
        ],
      ),
    );
  }
}

class SecureDataController extends StatefulWidget {
  const SecureDataController({super.key});

  @override
  State<SecureDataController> createState() => _SecureDataControllerState();
}

class _SecureDataControllerState extends State<SecureDataController> {
  late TextEditingController controller;
  late FlutterSecureStorage storage;

  @override
  void initState() {
    storage = FlutterSecureStorage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(),
        ElevatedButton(
          onPressed: () async {
            await storage.write(key: 'key', value: 555.toString());
          },
          child: Text('Save'),
        ),
        ElevatedButton(
          onPressed: () async {
            String s = await storage.read(key: 'key') ?? 'none';
            print(s);
          },
          child: Text('Load'),
        ),
        ElevatedButton(
          onPressed: () async {
            await storage.deleteAll();
          },
          child: Text('Delete'),
        ),
        Text('data'),
      ],
    );
  }
}
