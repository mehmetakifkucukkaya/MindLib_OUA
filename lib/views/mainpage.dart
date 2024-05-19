import 'package:flutter/material.dart';

import 'book_summaries_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  //* BottomNavigationBar'da gösteriecek sayfaların listesi
  static const List<Widget> _pages = <Widget>[
    // ContentUploadPage(),
    BookSummariesPage(),
    BookSummariesPage(),
    BookSummariesPage(),
    BookSummariesPage(),
    // TranslationPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: const Center(
          child: Text(
            'MindLib',
            style: TextStyle(fontSize: 26),
          ),
        ),
      ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[200],
        unselectedItemColor: Colors.grey[700],
        selectedItemColor: Theme.of(context).colorScheme.primary,
        selectedFontSize: 16,
        unselectedFontSize: 12,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined),
            label: 'İçerik Yükle',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'Kitap Özetleri',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_size_outlined),
            label: 'Çeviri',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
