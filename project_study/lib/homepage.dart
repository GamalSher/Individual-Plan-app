import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    print(_items);
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Индивидуальный учебный план",
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 25)),
              Text(
                'ИНДИВИДУАЛЬНЫЙ УЧЕБНЫЙ ПЛАН НА \n ${_items[0]['AcademicYear']}',
                textAlign: TextAlign.center,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 50)),
              TabBar(tabs: [
                Tab(
                  child: Text(
                    "Cеместр ${_items[0]["Semesters"][0]["Number"]}",
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                const Tab(
                  child: Text(
                    "Семестр 6 ",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ])
            ],
          ),
        ));
  }
}
