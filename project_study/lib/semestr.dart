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
    TableRow tableRowsecondary = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Наименование дисциплины",
          style: TextStyle(fontSize: 12, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Леция",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Семинар",
          style: TextStyle(color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Лабарат",
          style: TextStyle(color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ),
    ]);
    TableRow tableRow3 = TableRow(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
            '${_items[0]["Semesters"][0]['Disciplines'][0]['DisciplineName']['nameRu']}',
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 17),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${_items[0]["Semesters"][0]['Disciplines'][0]['Lesson'][0]['RealHours']}',
              style: const TextStyle(color: Colors.green),
              textAlign: TextAlign.center,
            ),
            const Text(
              '/',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '${_items[0]["Semesters"][0]['Disciplines'][0]['Lesson'][0]['Hours']}',
              style: _items[0]["Semesters"][0]['Disciplines'][0]['Lesson'][0]
                          ['RealHours'] ==
                      _items[0]["Semesters"][0]['Disciplines'][0]['Lesson'][0]
                          ['Hours']
                  ? const TextStyle(color: Colors.green)
                  : const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 17),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${_items[0]["Semesters"][0]['Disciplines'][0]['Lesson'][1]['RealHours']}',
              style: const TextStyle(color: Colors.green),
              textAlign: TextAlign.center,
            ),
            const Text(
              '/',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '${_items[0]["Semesters"][0]['Disciplines'][0]['Lesson'][1]['Hours']}',
              style: _items[0]["Semesters"][0]['Disciplines'][0]['Lesson'][1]
                          ['RealHours'] ==
                      _items[0]["Semesters"][0]['Disciplines'][0]['Lesson'][1]
                          ['Hours']
                  ? const TextStyle(color: Colors.green)
                  : const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 17),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${_items[0]["Semesters"][0]['Disciplines'][0]['Lesson'][2]['RealHours']}',
              style: const TextStyle(color: Colors.green),
              textAlign: TextAlign.center,
            ),
            const Text(
              '/',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '${_items[0]["Semesters"][0]['Disciplines'][0]['Lesson'][2]['Hours']}',
              style: _items[0]["Semesters"][0]['Disciplines'][0]['Lesson'][2]
                          ['RealHours'] ==
                      _items[0]["Semesters"][0]['Disciplines'][0]['Lesson'][2]
                          ['Hours']
                  ? const TextStyle(color: Colors.green)
                  : const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ]);
    TableRow tableRow4 = TableRow(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          '${_items[0]['Semesters'][0]['Disciplines'][1]['DisciplineName']['nameRu']}',
          style: const TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 17),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${_items[0]["Semesters"][0]['Disciplines'][1]['Lesson'][0]['RealHours']}',
              style: const TextStyle(color: Colors.green),
              textAlign: TextAlign.center,
            ),
            const Text(
              '/',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '${_items[0]["Semesters"][0]['Disciplines'][1]['Lesson'][0]['Hours']}',
              style: _items[0]["Semesters"][0]['Disciplines'][1]['Lesson'][0]
                          ['RealHours'] ==
                      _items[0]["Semesters"][0]['Disciplines'][1]['Lesson'][0]
                          ['Hours']
                  ? const TextStyle(color: Colors.green)
                  : const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 17),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${_items[0]["Semesters"][0]['Disciplines'][1]['Lesson'][1]['RealHours']}',
              style: const TextStyle(color: Colors.green),
              textAlign: TextAlign.center,
            ),
            const Text(
              '/',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '${_items[0]["Semesters"][0]['Disciplines'][1]['Lesson'][1]['Hours']}',
              style: _items[0]["Semesters"][0]['Disciplines'][1]['Lesson'][1]
                          ['RealHours'] ==
                      _items[0]["Semesters"][0]['Disciplines'][1]['Lesson'][1]
                          ['Hours']
                  ? const TextStyle(color: Colors.green)
                  : const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 17),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${_items[0]["Semesters"][0]['Disciplines'][1]['Lesson'][2]['RealHours']}',
              style: const TextStyle(color: Colors.green),
              textAlign: TextAlign.center,
            ),
            const Text(
              '/',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '${_items[0]["Semesters"][0]['Disciplines'][1]['Lesson'][2]['Hours']}',
              style: _items[0]["Semesters"][0]['Disciplines'][1]['Lesson'][2]
                          ['RealHours'] ==
                      _items[0]["Semesters"][0]['Disciplines'][1]['Lesson'][2]
                          ['Hours']
                  ? const TextStyle(color: Colors.green)
                  : const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ]);
    TableRow tableRow5 = TableRow(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
            '${_items[0]['Semesters'][0]['Disciplines'][2]['DisciplineName']['nameRu']}',
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: EdgeInsets.only(top: 22),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${_items[0]["Semesters"][0]['Disciplines'][2]['Lesson'][0]['RealHours']}',
              style: const TextStyle(color: Colors.green),
              textAlign: TextAlign.center,
            ),
            const Text(
              '/',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '${_items[0]["Semesters"][0]['Disciplines'][2]['Lesson'][0]['Hours']}',
              style: _items[0]["Semesters"][0]['Disciplines'][2]['Lesson'][0]
                          ['RealHours'] ==
                      _items[0]["Semesters"][0]['Disciplines'][2]['Lesson'][0]
                          ['Hours']
                  ? const TextStyle(color: Colors.green)
                  : const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(10.0),
      ),
      Padding(
        padding: EdgeInsets.only(top: 22),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${_items[0]["Semesters"][0]['Disciplines'][2]['Lesson'][1]['RealHours']}',
              style: const TextStyle(color: Colors.green),
              textAlign: TextAlign.center,
            ),
            const Text(
              '/',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '${_items[0]["Semesters"][0]['Disciplines'][2]['Lesson'][1]['Hours']}',
              style: _items[0]["Semesters"][0]['Disciplines'][2]['Lesson'][1]
                          ['RealHours'] ==
                      _items[0]["Semesters"][0]['Disciplines'][2]['Lesson'][1]
                          ['Hours']
                  ? const TextStyle(color: Colors.green)
                  : const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ]);

    return Scaffold(
      body: Column(children: [
        Table(
          border: TableBorder.all(color: Colors.grey.shade300),
          children: const [
            TableRow(children: [
              TableCell(
                  child: Padding(
                padding: EdgeInsets.only(left: 100, top: 15, bottom: 15),
                child: Text("Аудиторные занятия в часах",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center),
              ))
            ])
          ],
        ),
        Table(
            columnWidths: const {
              0: FractionColumnWidth(0.3),
              1: FractionColumnWidth(0.225),
              2: FractionColumnWidth(0.225),
              3: FractionColumnWidth(0.25)
            },
            border: TableBorder.all(color: Colors.grey.shade300),
            children: <TableRow>[
              tableRowsecondary,
              tableRow3,
              tableRow4,
              tableRow5
            ])
      ]),
    );
  }
}
