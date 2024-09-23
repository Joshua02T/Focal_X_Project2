import 'package:flutter/material.dart';
import 'package:settings_focal_x/view/news.dart';
import 'package:settings_focal_x/view/records.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Tajawal'),
    home: const MyApp(),
    debugShowCheckedModeBanner: false,
    routes: {'records': (context) => const Records()},
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const News();
  }
}
