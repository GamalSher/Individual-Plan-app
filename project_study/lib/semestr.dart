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
    TableRow tableRow = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
      ),
      Padding(
        padding: EdgeInsets.all(0),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Аудиторные занятия в часах",
          style: TextStyle(color: Colors.grey, fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
      ),
    ]);
    TableRow tableRowsecondary = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Наименование дисциплины",
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Леция",
          textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Семинар"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Лабарат"),
      ),
    ]);
    TableRow tableRow3 = TableRow(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
            '${_items[0]["Semesters"][0]['Disciplines'][0]['DisciplineName']['nameRu']}'),
      ),
      const Padding(
        padding: EdgeInsets.all(0),
      ),
      const Padding(
        padding: EdgeInsets.all(10.0),
      ),
      const Padding(
        padding: EdgeInsets.all(10.0),
      ),
    ]);
    TableRow tableRow4 = TableRow(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
            '${_items[0]['Semesters'][0]['Disciplines'][1]['DisciplineName']['nameRu']}'),
      ),
      const Padding(
        padding: EdgeInsets.all(0),
      ),
      const Padding(
        padding: EdgeInsets.all(10.0),
      ),
      const Padding(
        padding: EdgeInsets.all(10.0),
      ),
    ]);
    TableRow tableRow5 = TableRow(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
            '${_items[0]['Semesters'][0]['Disciplines'][2]['DisciplineName']['nameRu']}'),
      ),
      const Padding(
        padding: EdgeInsets.all(0),
      ),
      const Padding(
        padding: EdgeInsets.all(10.0),
      ),
      const Padding(
        padding: EdgeInsets.all(10.0),
      ),
    ]);

    return Scaffold(
      body: Column(children: [
        Table(
            columnWidths: const {
              0: FractionColumnWidth(0.3),
              1: FractionColumnWidth(0.225),
              2: FractionColumnWidth(0.225),
              3: FractionColumnWidth(0.25)
            },
            border: TableBorder.all(),
            children: <TableRow>[
              tableRow,
              tableRowsecondary,
              tableRow3,
              tableRow4,
              tableRow5
            ])
      ]),
    );
  }
}
