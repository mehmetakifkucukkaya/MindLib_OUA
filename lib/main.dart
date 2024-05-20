import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mindlib/firebase_options.dart';
import 'package:mindlib/views/mainpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  } catch (e) {
    print('Firebase.initializeApp() Hatası: $e');
  }

  runApp(
    const MyApp(),
  );
}

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
        // '/summaryPage': (context) => const SummaryPage(),
        //'/login': (context) => LoginOrRegister(),
        // '/signUp' : (context) => SignUpPage(),
      },
    );
  }
}
 