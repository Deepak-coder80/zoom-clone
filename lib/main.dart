import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './screens/login_screen.dart';
import './utils/colors.dart';

void main() async{
  //widget initalization
  WidgetsFlutterBinding.ensureInitialized();
  //await for the firebase app initialization
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
      home: const LoginScreen(),
    );
  }
}
