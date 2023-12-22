import 'package:flutter/material.dart';

import 'Pages/about.dart';
import 'Pages/homepage.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title : "Personal Portfolio - Panchami P Kumar",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      // routes: {
      //   '/about' : (context) => const AboutMe()
      // },
      home: const HomePage(),
      routes: {
        '/about' : (context) => const AboutMe(),
        '/homepage':(context)=> const HomePage(),

      },
    );
  }
}
