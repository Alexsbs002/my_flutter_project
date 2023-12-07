// fourth_container.dart
import 'package:flutter/material.dart';

class FourthContainer extends StatelessWidget {
  const FourthContainer({Key? key});

  @override
  Widget build(BuildContext context) {
    // Ваш код для четвертого контейнера
    return Container(
      height: 210.0,
      margin: EdgeInsets.only(top: 30.0),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: interess(),
          ),
          Container(
            child: inter(),
          ),
        ],
      ),
    );
  }
}

Widget interess() {
  return Container(
              width: 375,
              height: 94,
              padding: EdgeInsets.only(top: 14, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Интересы",
                    style: TextStyle(
                      fontSize: 20,
                      height: 1.2,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                      fontFamily: 'SF Pro Text',
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Мы подбираем истории и предложения по темам, которые вам нравятся",
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.29,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      color: Color(0x8C000000),
                    ),
                  ),
                ],
              ),
            );

}

final List<String> labels = [
  "Еда",
  "Саморазвитие",
  "Технологии",
  "Дом",
  "Досуг",
  "Забота о себе",
  "Наука"
];

BoxDecoration applyBoxDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(16.0),
    color: Color(0x14000000), // Цвет фона (с прозрачностью)
  );
}

Widget inter() {

  return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32.0), // Отступ перед вызовом Wrap()
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 32.0),
              child: Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: labels.map((label) {
                  return Container(
                    height: 32.0,
                    decoration: applyBoxDecoration(),
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      label,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.29,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                        fontFamily: 'SF Pro Text',
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      );

}
