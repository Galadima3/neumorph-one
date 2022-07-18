import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ?Colors.grey.shade800 : Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(50),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: darkMode ? Colors.grey[850] : Colors.grey[300],
                  boxShadow: [
                    //bottom right - darker
                    BoxShadow(
                        color: darkMode ? Colors.grey.shade900 : Colors.grey.shade300,
                        offset: const Offset(5, 5),
                        blurRadius: 15,
                        spreadRadius: 1),
                    BoxShadow(
                        color: darkMode ? Colors.grey.shade800 : Colors.white,
                        offset: const Offset(-5, -5),
                        blurRadius: 15,
                        spreadRadius: 1),

                    //top left - lighter
                  ]),
              child: Icon(
                Icons.rocket_launch,
                size: 50,
                color: darkMode ? Colors.white : Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      setState(() {
                        darkMode = true;
                      });
                    },
                    child: const Text(
                      'Dark',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      darkMode = false;
                    });
                  },
                  child: const Text(
                    'Light',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
