import 'package:flutter/material.dart';
import 'package:flutter_task/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Task',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: const Color(0xffffffff),
        
        // primaryColor: const Color(0xff0099e5),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff0099e5),
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xffffffff), size: 25),
        ),
      ),
      home: const HomePage(),
    );
  }
}
