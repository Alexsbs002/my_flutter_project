import 'package:flutter/material.dart';
import 'home_screen.dart';


void main() {
  runApp(MyApp());
}

// Основной класс приложения, который является виджетом без состояния (StatelessWidget)
class MyApp extends StatelessWidget {
  // Конструктор класса MyApp
  MyApp({Key? key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Установка темы приложения, включая цвет фона и схему цветов
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Установка цвета фона экрана
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Установка схемы цветов
        useMaterial3: true, // Использование Material3, если доступно
      ),
      // Установка главного экрана приложения в виде экземпляра HomeScreen
      home: HomeScreen(),
    );
  }
}
