// widgets/first_container.dart
import 'package:flutter/material.dart';

class FirstContainer extends StatefulWidget {
  const FirstContainer({Key? key}) : super(key: key);

  @override
  _FirstContainerState createState() => _FirstContainerState();
}

class _FirstContainerState extends State<FirstContainer> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: 60.0,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/3.png',
                width: 110.0,
                height: 110.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Positioned(
            top: 200.0,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: 122.0,
                height: 32.0,
                child: Text(
                  'Екатерина',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 50.0,
            left: 14.0,
            right: 14.0,
            child: SizedBox(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    width: 24.0,
                    height: 24.0,
                    image: AssetImage('assets/1.png'),
                    fit: BoxFit.none,
                  ),
                  Image(
                    width: 24.0,
                    height: 24.0,
                    image: AssetImage('assets/2.png'),
                    fit: BoxFit.none,
                  ),
                ],
              ),
            ),
          ),
          Positioned(

            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 60.0,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Профиль',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          if (selectedIndex == 0)
                            const Divider(
                              color: Colors.green,
                              thickness: 2.0,
                            ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Настройки',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          if (selectedIndex == 1)
                            const Divider(
                              color: Colors.green,
                              thickness: 2.0,
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
