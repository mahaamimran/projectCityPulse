import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _UrduTranslation = false;
  bool _EnglishTranslation = false;
  bool _References = false;
  bool _Transliteration = false;
  double _textSize = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          const Text(
            'LANGUAGE SETTINGS',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          // space
          const SizedBox(height: 10),
          // urdu translation line starts
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Add this line to space out the children
            children: [
              const Text(
                'Urdu Translation',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Switch(
                activeColor: const Color(0xFF677C7B),
                value: _UrduTranslation,
                onChanged: (value) {
                  setState(() {
                    _UrduTranslation = !_UrduTranslation;
                    print('urdu translation enabled: $_UrduTranslation');
                  });
                },
              ),
            ],
          ),
          // line ended
          // thin line
          Container(
            height: 0.5,
            color: Colors.black,
          ),

          // english translation line starts
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Add this line to space out the children
            children: [
              const Text(
                'English Translation',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Switch(
                activeColor: const Color(0xFF677C7B),
                value: _EnglishTranslation,
                onChanged: (value) {
                  setState(() {
                    _EnglishTranslation = !_EnglishTranslation;
                    print('English translation enabled: $_EnglishTranslation');
                  });
                },
              ),
            ],
          ),
          // sized box between anguage and font settings
          SizedBox(height: 10),
          // font settings
          const Text(
            'FONT SETTINGS',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(height: 10),
          // references + transliteration
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Add this line to space out the children
            children: [
              const Text(
                'References',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Switch(
                activeColor: const Color(0xFF677C7B),
                value: _References,
                onChanged: (value) {
                  setState(() {
                    _References = !_References;
                    print('References enabled: $_References');
                  });
                },
              ),
            ],
          ),
          // thin line
          Container(
            height: 0.5,
            color: Colors.black,
          ),

          // Transliteration
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Add this line to space out the children
            children: [
              const Text(
                'Transliteration',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Switch(
                activeColor: const Color(0xFF677C7B),
                value: _Transliteration,
                onChanged: (value) {
                  setState(() {
                    _Transliteration = !_Transliteration;
                    print('Transliteration enabled: $_Transliteration');
                  });
                },
              ),
            ],
          ),
          // line ended
          // references line starts
          Container(
            height: 0.5,
            color: Colors.black,
          ),
          SizedBox(height: 20),
          const Text(
            'Font Size',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          // fix this part
          // height changing sized box
          Container(height: 100 - (_textSize * 0.7), color: Colors.white),
          Text(
            'ٱلْحَمْدُ لِلّٰهِ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: _textSize, // Use a variable to control the font size
              // fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
          ),
          // height changing sized box
          Container(height: 100 - (_textSize * 0.7), color: Colors.white),
          Slider(
            value: _textSize,
            activeColor: const Color(0xFF677C7B),
            inactiveColor: const Color(0xFFD9D9D9),
            thumbColor: const Color.fromARGB(255, 255, 255, 255),
            min: 10, // Adjust the min and max values as needed
            max: 100,
            onChanged: (newValue) {
              setState(() {
                _textSize = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
