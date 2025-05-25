import 'package:flutter/material.dart';
import 'package:pbm2/profiles.dart';
import 'package:pbm2/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas PBM 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: loginscreen(),

      initialRoute: '/loginscreen',
      onGenerateRoute: (settings) {
        if (settings.name == '/profiles') {
          final String email = settings.arguments as String;
          return MaterialPageRoute(builder: (context) => profiles(email: email));
        }
        return null;
      },
    );
  }
}