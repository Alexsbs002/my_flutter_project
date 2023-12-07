// second_container.dart
import 'package:flutter/material.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.infinity, // 100% ширина
            height: 105.0,
            color: Colors.white, // Цвет первого блока
            child: Padding(
              padding: EdgeInsets.all(15.0), // Отступ 15 от краев
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "У вас подключено",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4.0), // Отступ между текстами
                  Text(
                    "Подписки, автоплатежи и сервисы на которые вы подписались",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0x8C000000),
                    ),
                  ),
                ],
              ),
            ),
          ), // Отступ между блоками
          Container(
            height: 140.0,
            color: Colors.white, // Цвет второго блока
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10.0), // Отступ перед первой карточкой
                  buildCard1(),
                  SizedBox(width: 10.0), // Отступ между карточками
                  buildCard2(),
                  SizedBox(width: 10.0), // Отступ после второй карточки
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard1() {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: 216.0,
        height: 130.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x124F4F6C),
              offset: Offset(0, 0),
              blurRadius: 14,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x14000000),
              offset: Offset(0, 0),
              blurRadius: 10,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 16.0),
            Row(
              children: [
                Container(
                  width: 16.0,
                ),
                Image.asset(
                  'assets/sber.png',
                ),
                SizedBox(width: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'СберПрайм',
                      style: TextStyle(
                        fontSize: 16.0,
                        height: 1.25,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 22.0),
            Container(
              width: 184.0,
              height: 38.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Платёж 9 июля',
                    style: TextStyle(
                      fontSize: 14.0,
                      height: 1.29,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    '199 ₽ в месяц',
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
            ),
          ],
        ),
      ),
    );
  }


  Widget buildCard2() {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: 216.0,
        height: 130.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x124F4F6C),
              offset: Offset(0, 0),
              blurRadius: 14,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x14000000),
              offset: Offset(0, 0),
              blurRadius: 10,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 16.0),
            Row(
              children: [
                Container(
                  width: 16.0,
                ),
                Image.asset(
                  'assets/proc.png',
                ),
                SizedBox(width: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Переводы',
                      style: TextStyle(
                        fontSize: 16.0,
                        height: 1.25,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 22.0),
            Container(
              width: 184.0,
              height: 38.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Автопродление 21 августа',
                    style: TextStyle(
                      fontSize: 14.0,
                      height: 1.29,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                    ),
                    softWrap: false, // Убираем перенос строки
                    overflow: TextOverflow.ellipsis, // Обрезаем текст, если он не помещается
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    '199 ₽ в месяц',
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
            ),
          ],
        ),
      ),
    );
  }
}

