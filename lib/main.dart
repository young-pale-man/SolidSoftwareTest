import 'package:flutter/material.dart';
import 'package:solid_software_test/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

///MyApp widget is the root of application
class MyApp extends StatelessWidget {
  ///Providing constructor for Main Widget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
