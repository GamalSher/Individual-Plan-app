import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'semestr.dart';

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
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {/* Write listener code here */},
              child: const Icon(
                Icons.arrow_back_ios_new, // add custom icons also
              ),
            ),
            actions: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      return _items[0]['DocumentURL'];
                    },
                    child: const Icon(
                      Icons.sim_card_download_outlined,
                      size: 26.0,
                    ),
                  ))
            ],
            centerTitle: true,
            title: const Text(
              "Индивидуальный учебный план",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          body: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 25)),
              Text(
                'ИНДИВИДУАЛЬНЫЙ УЧЕБНЫЙ ПЛАН НА \n ${_items[0]['AcademicYear']}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold),
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
              ]),
              const Expanded(
                  child: TabBarView(children: [Semestr(), Text("second")]))
            ],
          ),
        ));
  }
}
