import 'package:flutter/material.dart';
import '../routes.dart' as routes;
import 'home.dart';
import 'login.dart';

class App extends StatefulWidget {
  const App({super.key});

  static const String loginRoute = routes.loginRoute;
  static const String homeRoute = routes.homeRoute;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
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
        App.homeRoute: (context) => const HomePage()
      },
      initialRoute: "/login",
    );
  }
}
