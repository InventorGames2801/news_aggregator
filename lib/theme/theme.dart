import 'package:flutter/material.dart';

final themeDark = ThemeData(
  textTheme: TextTheme(
    bodySmall: TextStyle(fontSize: 18),
    bodyMedium: TextStyle(fontSize: 20),
    bodyLarge: TextStyle(fontSize: 22),
  ),
  appBarTheme: AppBarThemeData(backgroundColor: Colors.blueGrey),
  scaffoldBackgroundColor: Colors.blueGrey,
);

/*final themeDark = ThemeData(
  // Включаем поддержку Material 3 (современный дизайн)
  useMaterial3: true,
  
  // Указываем общую яркость темы
  brightness: Brightness.dark,

  // 1. Цветовая схема (Основа всей темы)
  // Автоматически генерирует гармоничные оттенки на основе базового цвета
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blueGrey,
    brightness: Brightness.dark,
    surface: const Color(0xFF1E1E1E), // Цвет поверхностей (карточек, меню)
  ),

  // 2. Фон всех страниц (Scaffold)
  scaffoldBackgroundColor: const Color(0xFF121212),

  // 3. Текстовая тема (Шрифты и размеры)
  textTheme: const TextTheme(
    bodySmall: TextStyle(fontSize: 18, color: Colors.white70),
    bodyMedium: TextStyle(fontSize: 20, color: Colors.white),
    bodyLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    // Заголовки (используются в AppBar по умолчанию в Material 3)
    titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
  ),

  // 4. Верхняя панель (AppBar)
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blueGrey,
    foregroundColor: Colors.white, // Цвет текста и иконок на панели
    centerTitle: true,
    elevation: 0,
    titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  ),

  // 5. Кнопки (ElevatedButton)
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blueGrey[700],
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Скругление углов
      ),
    ),
  ),

  // 6. Поля ввода (TextField / TextFormField)
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white.withOpacity(0.05),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.blueGrey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.blueGrey, width: 2),
    ),
    labelStyle: const TextStyle(color: Colors.blueGrey),
  ),

  // 7. Карточки (Card)
  cardTheme: CardTheme(
    color: const Color(0xFF2C2C2C),
    elevation: 2,
    margin: const EdgeInsets.all(8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  ),

  // 8. Иконки
  iconTheme: const IconThemeData(
    color: Colors.blueGrey,
    size: 26,
  ),

  // 9. Плавающая кнопка (FloatingActionButton)
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.blueGrey,
    foregroundColor: Colors.white,
    shape: CircleBorder(), // Делаем кнопку круглой
  ),

  // 10. Нижняя навигация (BottomNavigationBar)
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF1E1E1E),
    selectedItemColor: Colors.blueGrey,
    unselectedItemColor: Colors.grey,
    type: BottomNavigationBarType.fixed,
  ),
); */
