import 'package:flutter/material.dart';

import 'sf_charts.dart';

class ReportsMenu extends StatefulWidget {
  const ReportsMenu({Key? key}) : super(key: key);

  @override
  _ReportsMenuState createState() => _ReportsMenuState();
}

class _ReportsMenuState extends State<ReportsMenu> {
  bool myColor = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
          Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.green, width: 4.0))),
              child: const Text('Hidratación',
                  style:
                      TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold))),
          const Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: const <Widget>[
                  Text('Litros actuales'),
                  Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                  Text(
                    '1.2 L',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
              const Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.green,
                size: 50.0,
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
              Column(
                children: const <Widget>[
                  Text('Litros objetivo'),
                  Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                  Text(
                    '2.5 L',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                child: const Text('1 semana'),
                style: TextButton.styleFrom(
                  side: const BorderSide(color: Colors.green),
                  primary: myColor ? Colors.blue : Colors.green,
                ),
                onPressed: () {
                  setState(() {
                    myColor = !myColor;
                  });
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: 30.0,
                  child: VerticalDivider(
                    thickness: 1.5,
                    color: Colors.black45,
                  ),
                ),
              ),
              TextButton(
                child: const Text('1 mes'),
                style: TextButton.styleFrom(
                  side: const BorderSide(color: Colors.green),
                  primary: myColor ? Colors.blue : Colors.green,
                ),
                onPressed: () {
                  setState(() {
                    myColor = !myColor;
                  });
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: 30.0,
                  child: VerticalDivider(
                    thickness: 1.5,
                    color: Colors.black45,
                  ),
                ),
              ),
              TextButton(
                child: const Text('3 meses'),
                style: TextButton.styleFrom(
                  side: const BorderSide(color: Colors.green),
                  primary: myColor ? Colors.blue : Colors.green,
                ),
                onPressed: () {
                  setState(() {
                    myColor = !myColor;
                  });
                },
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
          const Card(
            elevation: 5.0,
            margin: EdgeInsets.symmetric(horizontal: 25.0),
            child: SFHydratationLineChart(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.black87,
            ),
          ),
          Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.green, width: 4.0))),
              child: const Text('Calorías',
                  style:
                      TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold))),
          const Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: const <Widget>[
                  Text('Calorías actuales'),
                  Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                  Text(
                    '1035 cal',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
              const Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.green,
                size: 50.0,
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
              Column(
                children: const <Widget>[
                  Text('Calorías objetivo'),
                  Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                  Text(
                    '2000 ~ cal',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                child: const Text('1 semana'),
                style: TextButton.styleFrom(
                  side: const BorderSide(color: Colors.green),
                  primary: myColor ? Colors.blue : Colors.green,
                ),
                onPressed: () {
                  setState(() {
                    myColor = !myColor;
                  });
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: 30.0,
                  child: VerticalDivider(
                    thickness: 1.5,
                    color: Colors.black45,
                  ),
                ),
              ),
              TextButton(
                child: const Text('1 mes'),
                style: TextButton.styleFrom(
                  side: const BorderSide(color: Colors.green),
                  primary: myColor ? Colors.blue : Colors.green,
                ),
                onPressed: () {
                  setState(() {
                    myColor = !myColor;
                  });
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: 30.0,
                  child: VerticalDivider(
                    thickness: 1.5,
                    color: Colors.black45,
                  ),
                ),
              ),
              TextButton(
                child: const Text('3 meses'),
                style: TextButton.styleFrom(
                  side: const BorderSide(color: Colors.green),
                  primary: myColor ? Colors.blue : Colors.green,
                ),
                onPressed: () {
                  setState(() {
                    myColor = !myColor;
                  });
                },
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
          const Card(
            elevation: 5.0,
            margin: EdgeInsets.symmetric(horizontal: 25.0),
            child: SFLineChartCalories(),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
        ],
      ),
    );
  }
}
