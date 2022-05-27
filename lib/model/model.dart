// {
//   "code": 200,
//   "status": "OK",
//   "data": [
//     {
//       "number": 1,
//       "name": "",
//       "englishName": "Al-Faatiha",
//       "englishNameTranslation": "The Opening",
//       "numberOfAyahs": 7,
//       "revelationType": "Meccan"
//     }
//   ]
// }

// To parse this JSON data, do
//
//     final surah = surahFromJson(jsonString);
import 'dart:convert';

Surah surahFromJson(String str) => Surah.fromJson(json.decode(str));

String surahToJson(Surah data) => json.encode(data.toJson());

class Surah {
  Surah({
    required this.code,
    required this.status,
    required this.data,
  });

  final int code;
  final String status;
  final List<Datum> data;

  factory Surah.fromJson(Map<String, dynamic> json) => Surah(
        code: json["code"],
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.number,
    required this.name,
    required this.englishName,
    required this.englishNameTranslation,
    required this.numberOfAyahs,
    required this.revelationType,
  });

  final int number;
  final String name;
  final String englishName;
  final String englishNameTranslation;
  final int numberOfAyahs;
  final String revelationType;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        number: json["number"],
        name: json["name"],
        englishName: json["englishName"],
        englishNameTranslation: json["englishNameTranslation"],
        numberOfAyahs: json["numberOfAyahs"],
        revelationType: json["revelationType"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "name": name,
        "englishName": englishName,
        "englishNameTranslation": englishNameTranslation,
        "numberOfAyahs": numberOfAyahs,
        "revelationType": revelationType,
      };
}
