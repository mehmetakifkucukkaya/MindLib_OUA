import 'package:flutter/material.dart';
import 'package:mindlib/views/mainpage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.orange,
            secondary: Colors.deepOrange,
            primary: Colors.red),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const MainPage(),
        // '/login' : (context) => LoginPage(),
        // '/signUp' : (context) => SignUpPage(),
      },
    );
  }
}
