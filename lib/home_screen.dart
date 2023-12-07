// Импорт библиотек Flutter для построения пользовательских интерфейсов
import 'package:flutter/material.dart';

// Импорт пользовательских виджетов, представляющих контейнеры
import 'first_container.dart';
import 'second_container.dart';
import 'third_container.dart';
import 'fourth_container.dart';

// Класс HomeScreen представляет главный экран приложения
class HomeScreen extends StatelessWidget {
  // Конструктор класса HomeScreen
  HomeScreen();

  // Метод build строит и возвращает иерархию виджетов для главного экрана
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // Использование виджета Scaffold для базовой структуры экрана
      body: SingleChildScrollView(
        // Использование SingleChildScrollView для прокрутки содержимого экрана
        child: Column(
          children: [
            // Вставка пользовательских контейнеров на главный экран
            FirstContainer(),
            SecondContainer(),
            ThirdContainer(),
            FourthContainer(),
          ],
        ),
      ),
    );
  }
}