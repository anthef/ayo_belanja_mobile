import 'package:flutter/material.dart';
import 'package:ayo_belanja/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayo Belanja',
      theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple,).copyWith(secondary: Colors.deepPurple[400]),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
