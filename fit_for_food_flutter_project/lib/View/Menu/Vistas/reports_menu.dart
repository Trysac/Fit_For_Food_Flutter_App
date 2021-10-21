import 'package:flutter/material.dart';

class ReportsMenu extends StatefulWidget {
  const ReportsMenu({Key? key}) : super(key: key);

  @override
  _ReportsMenuState createState() => _ReportsMenuState();
}

class _ReportsMenuState extends State<ReportsMenu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const SizedBox(
          child: Padding(
            padding: EdgeInsets.only(top: 30.0, bottom: 20.0),
            child: Center(
              child: Text(
                'Hidratación',
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                Text('Litros actuales'),
                Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                Text(
                  '1.2 L',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.green,
                size: 40.0,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                Text('Litros objetivo'),
                Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                Text(
                  '2.5 L',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 36.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: const Text('1 semana'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green,
                  onSurface: Colors.grey,
                  elevation: 4.0,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.5))),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 30.0)),
              TextButton(
                onPressed: () {},
                child: const Text('1 mes'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green,
                  onSurface: Colors.grey,
                  elevation: 4.0,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.5))),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 30.0)),
              TextButton(
                onPressed: () {},
                child: const Text('3 meses'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green,
                  onSurface: Colors.grey,
                  elevation: 4.0,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.5))),
                ),
              ),
            ],
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(top: 00.0),
            child: Image(image: AssetImage('assets/images/04.JPG'))),
        const SizedBox(
          child: Padding(
            padding: EdgeInsets.only(top: 30.0, bottom: 20.0),
            child: Center(
              child: Text(
                'Calorías',
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                Text('Calorías actuales'),
                Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                Text(
                  '1035 cal',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.green,
                size: 40.0,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                Text('Calorías objetivo'),
                Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                Text(
                  '2000 ~ cal',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 36.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: const Text('1 semana'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green,
                  onSurface: Colors.grey,
                  elevation: 4.0,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.5))),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 30.0)),
              TextButton(
                onPressed: () {},
                child: const Text('1 mes'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green,
                  onSurface: Colors.grey,
                  elevation: 4.0,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.5))),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 30.0)),
              TextButton(
                onPressed: () {},
                child: const Text('3 meses'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green,
                  onSurface: Colors.grey,
                  elevation: 4.0,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.5))),
                ),
              ),
            ],
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(top: 00.0),
            child: Image(image: AssetImage('assets/images/05.JPG'))),
        const SizedBox(
          child: Padding(
            padding: EdgeInsets.only(top: 30.0, bottom: 20.0),
            child: Center(
              child: Text(
                'Peso',
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                Text('Peso actuales'),
                Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                Text(
                  '68 kg',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.green,
                size: 40.0,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                Text('Peso objetivo'),
                Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                Text(
                  '60 kg',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 36.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: const Text('1 semana'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green,
                  onSurface: Colors.grey,
                  elevation: 4.0,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.5))),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 30.0)),
              TextButton(
                onPressed: () {},
                child: const Text('1 mes'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green,
                  onSurface: Colors.grey,
                  elevation: 4.0,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.5))),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 30.0)),
              TextButton(
                onPressed: () {},
                child: const Text('3 meses'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green,
                  onSurface: Colors.grey,
                  elevation: 4.0,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.5))),
                ),
              ),
            ],
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(top: 00.0),
            child: Image(image: AssetImage('assets/images/06.JPG'))),
      ],
    );
  }
}
