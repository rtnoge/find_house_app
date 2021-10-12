import 'dart:convert';
import 'package:find_house_app/models/recommended.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RecommendedProvider extends ChangeNotifier {
  getRecommendedSpaces() async {
    var result = await http
        .get(Uri.https("bwa-cozy.herokuapp.com", "/recommended-spaces"));

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Recommended> recommended =
          data.map((item) => Recommended.fromJson(item)).toList();
      return recommended;
    } else {
      return <Recommended>[];
    }
  }
}
