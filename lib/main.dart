import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_holy_quran/screens/home.dart';
import 'package:the_holy_quran/screens/surah.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Holy Quran',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
        fontFamily: GoogleFonts.rubik().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomeScreen(),
        "/surah": (context) => const SurahPage(),
      },
    );
  }
}
