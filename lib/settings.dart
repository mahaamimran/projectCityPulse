import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool lightMode=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          InkWell(
            onTap: () {
              // Handle the click event for Account management
            },
            child: buildOptionContainer(
              'Account management',
              Icons.arrow_forward_ios,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          InkWell(
            onTap: () {
              // Handle the click event for Privacy and security
            },
            child: buildOptionContainer(
              'Privacy and security',
              Icons.arrow_forward_ios,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          InkWell(
            onTap: () {
              // Handle the click event for General settings
            },
            child: buildOptionContainer(
              'General settings',
              Icons.arrow_forward_ios,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          InkWell(
            onTap: () {
              // Handle the click event for Route preferences
            },
            child: buildOptionContainer(
              'Route preferences',
              Icons.arrow_forward_ios,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          InkWell(
            onTap: () {
              // Handle the click event for Traffic updates
            },
            child: buildOptionContainer(
              'Traffic updates',
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            title: Text('Light mode'),
            trailing: Switch(
              value: lightMode,
              activeColor: Colors.purple[200], // Set the background color to light purple
              inactiveThumbColor: Colors.purple[800],
              onChanged: (value) {
                setState(() {
                  lightMode=!lightMode;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOptionContainer(String title, IconData icon) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(10.0),
        color: Color.fromRGBO(190, 136, 251, 0.2),
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[300]!,
            width: 1.0,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                icon,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}