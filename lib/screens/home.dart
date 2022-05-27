import 'package:flutter/material.dart';
import 'package:the_holy_quran/screens/surah.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quran Sarif'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('Quran App'),
            ),
            ListTile(
              title: const Text('Surah'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SurahPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(),
    );
  }
}
