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
        // backgroundColor: Colors.amber,
        body: ListView(
      children: [
        // space beneath navigation bar
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // border radius
            // first column
            Column(
              children: [
                // account information
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 241, 225, 230),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                // vehicles
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 28, 138, 131),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                // predictions
                Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 176, 218, 213),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            // second column
            Column(
              children: [
                // parking
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(145, 60, 240, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                // fine payments
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 214, 195, 235),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                // traffic updates
                Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 66, 46, 87),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
