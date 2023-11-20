import 'package:flutter/material.dart';

// subpage 1
class SubPage1 extends StatefulWidget {
  @override
  State<SubPage1> createState() => _SubPage1State();
}
//change

class _SubPage1State extends State<SubPage1> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(120, 142, 141, 0.56),
      child: const Center(
        child: Text(
          'Sub Page 1',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
// subpage 2
class SubPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(120, 142, 141, 0.4),
      child: const Center(
        child: Text(
          'Sub Page 2',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
// subpage 3
class SubPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(120, 142, 141, 0.56),
      child: const Center(
        child: Text(
          'Sub Page 3',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
// subpage 4
class SubPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(120, 142, 141, 0.4),
      child: const Center(
        child: Text(
          'Sub Page 4',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}

// skeleton widget
class Page0 extends StatefulWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  _Page0State createState() => _Page0State();
}

class _Page0State extends State<Page0> {

  //bool isGalleryView = true;
  int _selectedIndex = 0;
  bool _isPlaying = false;
  int _currentPageIndex = 0; // Initialize with the first page index
  late PageController _pageController;
  // subpage list
   final List<Widget> _subPages = [
    SubPage1(),
    SubPage2(),
    SubPage3(),
    SubPage4(),
  ];
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPageIndex);
    _pageController.addListener(_handlePageChange);
  }

  void _handlePageChange() {
    setState(() {
      _currentPageIndex = _pageController.page!.toInt();
    });
  }

  @override
  void dispose() {
    _pageController.removeListener(_handlePageChange);
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF677C7B),
        title: const Text('Praise & Glorification'),
        /*
        actions: [
          IconButton(
            icon: Image.asset(
              isGalleryView ? 'assets/listView.png' : 'assets/galleryView.png',
              scale: 0.7,
            ),
            onPressed: () {
              setState(() {
                isGalleryView = !isGalleryView;
                print('isGalleryView: $isGalleryView');
              });
            },
          ),
        ],
          */
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        onPageChanged: (index) {
          // This callback is triggered whenever the page changes
          setState(() {
            _currentPageIndex = index;
            print('page index: $_currentPageIndex');
          });
        },
        controller: PageController(initialPage: _currentPageIndex),
        children: _subPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 55, 73, 87),
        selectedItemColor: const Color.fromARGB(255, 55, 73, 87),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          // number of page
          BottomNavigationBarItem(
            // not clickable item
            icon: Text(
              '${_currentPageIndex + 1}/4',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                // Handle play/pause button click
                print('object');
              },
              icon: const Icon(
                Icons.loop,
                size: 30,
              ),
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                setState(() {
                  // Handle play/pause button click
                  _isPlaying = !_isPlaying;
                  print('pause play');
                });
              },
              icon: Icon(
                _isPlaying ? Icons.pause : Icons.play_arrow,
                size: 30,
              ),
            ),
            label: '',
          ),
          // favourite
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                // Handle play/pause button click
                print('fav');
              },
              icon: const Icon(
                Icons.favorite,
                size: 30,
              ),
            ),
            label: '',
          ),
          // share button
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                // Handle play/pause button click
                print('share');
              },
              icon: const Icon(
                Icons.share,
                size: 30,
              ),
            ),
            label: '',
          ),
        ],
      ),
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: _subPages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Sub Page ${index + 1}'),
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                        print('page $_selectedIndex WOHOO');
                        
                      });
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
