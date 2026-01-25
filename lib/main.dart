import 'package:cashpeak/ui/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Cash Peak',
            style: TextStyle(fontSize: 48, color: Colors.black),
          ),
          toolbarHeight: 300,
          centerTitle: true,
        ),
        body: const HomePage(),
      ),
      title: 'Cash Peak',
      debugShowCheckedModeBanner: false,
    );
  }
}
