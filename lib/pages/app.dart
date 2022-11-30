import 'package:flutter/material.dart';
import '../routes.dart' as routes;
import 'home.dart' as home;
import 'explore.dart' as explore;
import 'bookmarks.dart' as bookmarks;
import 'login.dart';

class App extends StatefulWidget {
  const App({super.key});

  static const String loginRoute = routes.loginRoute;
  static const String homeRoute = routes.homeRoute;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;

  // ignore: prefer_final_fields
  static List<Widget> _widgetOptions = <Widget>[
    home.HomePage(),
    bookmarks.BookmarksPage(),
    explore.ExplorePage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var title = 'Feedo';
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {
        App.loginRoute: (context) => LoginPage(),
      },
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          backgroundColor: Colors.black87,
          selectedItemColor: Colors.white70,
          unselectedItemColor: Colors.white38,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline),
              label: 'Bookmarks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined),
              label: 'Discover',
            ),
          ],
        ),
      ),
    );
  }
}
