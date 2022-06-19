import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './auth/authMethod.dart';
import './screens/home_screen.dart';
import './screens/login_screen.dart';
import './utils/colors.dart';

void main() async {
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
      title: 'Zoom Clone',
      //default theming of app
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      //routes for the application
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
      //home changes to stream builder
      home: StreamBuilder(
        //stream is authChange variable in the AuthMethod class
        stream: AuthMethod().authChange,
        //builder want to parameter - context and snapshot-which holds the data
        builder: (context, snapshot) {
          //connection not established trying to sign in
          if (snapshot.connectionState == ConnectionState.waiting) {
            //then return a circular progress bar
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          //if snapshot has the data --> previously logged in then return home screen
          if (snapshot.hasData) {
            return const HomeScreen();
          }
          //else log in screen --> new to app or cleared the data
          return const LoginScreen();
        },
      ),
    );
  }
}
