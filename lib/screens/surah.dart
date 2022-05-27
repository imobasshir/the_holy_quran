import 'package:flutter/material.dart';
import 'package:the_holy_quran/model/model.dart';
import 'package:the_holy_quran/utils/data_service.dart';
import 'package:the_holy_quran/utils/shimer_effect.dart';

class SurahPage extends StatefulWidget {
  const SurahPage({Key? key}) : super(key: key);

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
  late Future<Surah> surah;
  @override
  void initState() {
    surah = DataService().surahFetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Surah'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: surah,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data.data;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              data[index].number.toString(),
                            ),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              data[index].name,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              data[index].englishName,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
              ),
            );
          } else {
            return const Effect();
          }
        },
      ),
    );
  }
}
