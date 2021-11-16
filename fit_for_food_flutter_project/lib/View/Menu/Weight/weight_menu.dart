import '../sf_charts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeightMenu extends StatefulWidget {
  const WeightMenu({Key? key}) : super(key: key);

  @override
  _WeightMenuState createState() => _WeightMenuState();
}

class _WeightMenuState extends State<WeightMenu> {
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
              child: const Text('Peso actual',
                  style:
                      TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold))),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
          const Text(
            '75 kg',
            style: TextStyle(
                color: Colors.green,
                fontSize: 40.0,
                fontWeight: FontWeight.bold),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Text(
                    'Inicio',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Text(
                      '79.6 kg',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 80.0)),
              Column(
                children: <Widget>[
                  const Text(
                    'Objetivo',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Text(
                      '70.0 kg',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
          const Card(
            elevation: 5.0,
            margin: EdgeInsets.symmetric(horizontal: 25.0),
            child: SFWeightLineChart(),
          ),
        ],
      ),
    );
  }
}
