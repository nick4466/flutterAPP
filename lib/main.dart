import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/profile_screen.dart';

//Impresion del perfil
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const ProfileScreen(),
    );
  }
}
