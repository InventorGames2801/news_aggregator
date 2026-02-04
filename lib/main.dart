import 'package:flutter/material.dart';
import 'package:my_news/presentation/pages/news_list_page/news_list_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const NewsListPage());
  }
}
