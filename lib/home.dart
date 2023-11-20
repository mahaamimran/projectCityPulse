import 'package:flutter/material.dart';


// is gallerry view?change font:size accordingly;
class Home extends StatefulWidget {
  final bool isMessageSent;
  const Home({Key? key, required this.isMessageSent}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isGalleryView = false;

  @override
  void initState() {
    super.initState();
    // Set the initial state of isGalleryView based on widget.isMessageSent
    isGalleryView = widget.isMessageSent;
  }

  @override
  void didUpdateWidget(covariant Home oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Update isGalleryView based on widget.isMessageSent
    isGalleryView = widget.isMessageSent;
  }
/*
  void navigateToPage(int index) {
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Page0()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Page1()),
      );
    }
    // add more as pages are built
  }
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
        children: [
          if (isGalleryView)
            Wrap(
              spacing: MediaQuery.of(context).size.width * 0.06,
              runSpacing: MediaQuery.of(context).size.width * 0.01,
              alignment: WrapAlignment.center,
              children: _buildContainers(),
            )
          else
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _buildContainers(),
            ),
        ],
      ),
    );
  }

  List<String> containerTexts = [
    'Praise & Glorification',
    'Morning',
    'Evening',
    'Protection',
    'Protection From an Enemy',
    'Protection During the Night',
    'Fright During Sleep',
    'After a Bad Dream',
    'Wardign Off Evil Whisperings',
    'Warding Off Evil-Eye',
  ];
  List<String> containerImages = [
    'assets//flower.png',
    'assets/sun.png',
    'assets/sunset.png',
    'assets/protection.png',
    'assets/enemyProtection.png',
    'assets/night.png',
    'assets/sleep.png',
    'assets/badDream.png',
    'assets/listView.png',
    'assets/listView.png',
  ];
  List<Widget> _buildContainers() {
    return List.generate(
      10,
      (index) => GestureDetector(
        onTap: () {
          // Handle the click for the container
          print('tapped box $index');
          print('Is Message Sent: ${widget.isMessageSent}');
          //navigateToPage(index);
        },
        child: Container(
          width: isGalleryView
              ? MediaQuery.of(context).size.width * 0.4
              : MediaQuery.of(context).size.width * 0.9,
          height: isGalleryView
              ? MediaQuery.of(context).size.width * 0.4
              : MediaQuery.of(context).size.height * 0.15,
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.width * 0.04),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(120, 142, 141, 0.56),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 10,
            ),
            child: Column(
              // spacing for png image and text in eachh box
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  containerTexts[index],
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Image.asset(
                  containerImages[index],
                  width: 50, // Adjust the width of the image
                  height: 50, // Adjust the height of the image
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
