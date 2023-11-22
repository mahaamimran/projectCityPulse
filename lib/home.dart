import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // two rectangles in two columns
        backgroundColor: Colors.blue,
        body: ListView(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // border radius

                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: const Color.fromRGBO(255, 239, 244, 1),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: const Color.fromRGBO(145, 60, 240, 1),
                ),
              ],
            ),
          ],
        ));
  }
}
