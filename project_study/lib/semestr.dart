import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Semestr extends StatefulWidget {
  const Semestr({super.key});
  @override
  State<Semestr> createState() => _Semestr();
}

class _Semestr extends State<Semestr> {
  List _items = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('LocalJSON/data.json');
    final data = await jsonDecode(response);
    setState(() {
      _items = data["Items"];
    });
  }

  @override
  Widget build(BuildContext context) {
    readJson();
    return const Scaffold(
      body: Text("semestr 6"),
    );
  }
}
