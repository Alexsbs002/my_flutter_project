// third_container.dart
import 'package:flutter/material.dart';

class ThirdContainer extends StatelessWidget {
  const ThirdContainer({Key? key});

  @override
  Widget build(BuildContext context) {
    // Ваш код для третьего контейнера
    return Container(
      height: 270.0,
      margin: EdgeInsets.only(top: 30.0),
      color: Colors.white,
      child: Column(
        children: [
        Container(
          child: head(),
        ),
        Container(
            child: limit(),
        ),
        Container(
          child: list2(),
        ),
        Container(
          child: list3(),
        ),

        ],
      ),
    );
  }
}

Widget list3() {
  return Container(
    width: 375.0,
    height: 64.0,
    child: Container(
      width: 327.0,
      height: 40.0,
      child: Padding(
        padding: EdgeInsets.all(0.0), // Отступ внутри внутреннего контейнера
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 12.0), // Отступы для изображения
              child: Image.asset(
                'assets/arrow.png', // Путь к вашему изображению
                width: 36.0,
                height: 36.0,
                fit: BoxFit.none, // Выберите нужный вам способ масштабирования
              ),
            ),
            // Разделительный виджет между изображением и текстом
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12.0), // Отступ текста от верхней границы
                Text(
                  "Информация о тарифах   и лимитах",
                  style: TextStyle(
                    fontSize: 16.0,
                    height: 1.25, // Высота строки
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
              ],
            ),
            // Кнопка в конце строки
            Spacer(), // Равномерное распределение пространства
            Container(
              width: 48.0,
              height: 40.0,
              margin: EdgeInsets.only(left: 8.0), // Отступ кнопки от предыдущего виджета

              child: IconButton(
                icon: Image.asset(
                  'assets/strl.png', // Путь к вашему изображению для кнопки
                ),
                onPressed: () {
                  // Обработчик нажатия кнопки
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget list2() {
  return Container(
    width: 375.0,
    height: 64.0,
    child: Container(
      width: 327.0,
      height: 40.0,
      child: Padding(
        padding: EdgeInsets.all(0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 12.0),
                  child: Image.asset(
                    'assets/procempty.png',
                    width: 36.0,
                    height: 36.0,
                    fit: BoxFit.none,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12.0),
                    Text(
                      "Переводы без комиссии",
                      style: TextStyle(
                        fontSize: 16.0,
                        height: 1.25,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Text(
                      "Показать остаток в этом месяце",
                      style: TextStyle(
                        fontSize: 14.0,
                        height: 1.29,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        color: Color(0x8C000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 48.0,
              height: 40.0,
              margin: EdgeInsets.only(left: 8.0),
              child: IconButton(
                icon: Image.asset(
                  'assets/strl.png',
                ),
                onPressed: () {
                  // Обработчик нажатия кнопки
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget limit() {
  return Container(
    width: 375.0,
    height: 64.0,
    child: Container(
      width: 327.0,
      height: 40.0,
      child: Padding(
        padding: EdgeInsets.all(0.0), // Отступ внутри внутреннего контейнера
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 12.0), // Отступы для изображения
                  child: Image.asset(
                    'assets/speed.png', // Путь к вашему изображению
                    width: 36.0,
                    height: 36.0,
                    fit: BoxFit.none, // Выберите нужный вам способ масштабирования
                  ),
                ),
                // Разделительный виджет между изображением и текстом
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12.0), // Отступ текста от верхней границы
                    Text(
                      "Изменить суточный лимит",
                      style: TextStyle(
                        fontSize: 16.0,
                        height: 1.25, // Высота строки
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(height: 2.0), // Отступ между текстами
                    Text(
                      "На платежи и переводы",
                      style: TextStyle(
                        fontSize: 14.0,
                        height: 1.29,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        color: Color(0x8C000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 48.0,
              height: 40.0,
              margin: EdgeInsets.only(left: 8.0), // Отступ изображения от правого края контейнера

              child: IconButton(
                icon: Image.asset(
                  'assets/strl.png', // Путь к вашему изображению для кнопки
                ),
                onPressed: () {
                  // Обработчик нажатия кнопки
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget head() {
  return Container(
    width: 375.0,
    height: 76.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 14.0),
        Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            'Тарифы и лимиты',
            style: TextStyle(
              fontSize: 20.0,
              height: 24.0 / 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'SF Pro Text',
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            'Для операций в Сбербанк Онлайн',
            style: TextStyle(
              fontSize: 14.0,
              height: 18.0 / 14.0,
              fontWeight: FontWeight.w500,
              color: Color(0x8C000000),
              fontFamily: 'SF Pro Text',
            ),
          ),
        ),
        SizedBox(height: 12.0), // Отступ между последним текстом и нижней границей контейнера
      ],
    ),
  );
}