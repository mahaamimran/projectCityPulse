// ignore_for_file: avoid_print

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
                  GestureDetector(
                    onTap: () {
                      print('acounts information');
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 241, 225, 230),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // text
                            const Text(
                              'Account Information',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(208, 57, 176, 1),
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            // logo
                            // stack two pngs
                            Stack(
                              children: [
                                Image.asset(
                                  // change this
                                  'assets/back.png',
                                  width: 100, // Adjust the width of the image
                                  height: 100, // Adjust the height of the image
                                ),
                                Image.asset(
                                  // change this
                                  'assets/3.png',
                                  width: 100, // Adjust the width of the image
                                  height: 100, // Adjust the height of the image
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                  // vehicles
                  GestureDetector(
                    onTap: () {
                      print('vehicles tapped');
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color:  Color(0xFF5FC7D9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // text
                            const Text(
                              'Vehicles',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(208, 57, 176, 1),
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            // logo
                            Image.asset(
                              // change this
                              'assets/vehicles.png',
                              width: 70, // Adjust the width of the image
                              height: 70, // Adjust the height of the image
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                  // predictions
                  GestureDetector(
                    onTap: () {
                      print('Predictions Tapped');
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 176, 218, 213),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // text
                            const Text(
                              'Predictions',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            // logo
                            Image.asset(
                              // change this
                              'assets/Predictions.png',
                              width: 100, // Adjust the width of the image
                              height: 100, // Adjust the height of the image
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.05),
              // second column
              Column(
                children: [
                  // parking
                  GestureDetector(
                    onTap: () {
                      print('Parking Tapped');
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(145, 60, 240, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // text
                            const Text(
                              'Parking',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            // logo
                            Image.asset(
                              'assets/parking.png',
                              width: 100, // Adjust the width of the image
                              height: 100, // Adjust the height of the image
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                  // fine payments
                  GestureDetector(
                    onTap: () {
                      print('Fine Payments Tapped');
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9F4FF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // text
                            const Text(
                              'Fine Payments',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color:  Color(0xFF8734E4),
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            // sized box
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02),
                            // logo
                            Image.asset(
                              // change this
                              'assets/finePayments.png',
                              width: 80, // Adjust the width of the image
                              height: 80, // Adjust the height of the image
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                  // traffic updates
                  GestureDetector(
                    onTap: () {
                      print('Traffic Updates Tapped');
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color:const Color(0xFF311D6E),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // text
                            const Text(
                              'Traffic Updates',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(222, 222, 222, 1),
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            // logo
                            Image.asset(
                              // change this
                              'assets/trafficUpdates.png',
                              width: 60, // Adjust the width of the image
                              height: 60, // Adjust the height of the image
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
