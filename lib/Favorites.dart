// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(37),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildNotificationRow(
                  'routechange.png',
                  'Route Change',
                  'Your route has been changed',
                ),
                buildNotificationRow(
                  'camera.png',
                  'Signal Closed Ahead',
                  'Traffic lights are closed ahead',
                ),
                buildNotificationRow(
                  'routechange.png',
                  'Route Change',
                  'Traffic lights closed ahead',
                ),
                buildNotificationRow(
                  'roadclosed.png',
                  'Road Closure',
                  'Chakwal road is cornered off',
                ),
                buildNotificationRow(
                  'routechange.png',
                  'Construction Ahead',
                  'Slow down and stay on the left lane',
                ),
                buildNotificationRow(
                  'startjourney.png',
                  'Start This Journey',
                  'Current location to Dwatson F-10',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNotificationRow(String image, String title, String description) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/$image',
              scale: 0.7,
            ),
            SizedBox(width: 8,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.03,
                  ),
                ),
              ],
            ),
            Spacer(), // Use Spacer to occupy remaining space
            Image.asset(
              'assets/threedots.png',
              scale: 0.85,
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          color: Colors.grey[300],
          height: MediaQuery.of(context).size.height * 0.002,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
      ],
    );
  }
}
