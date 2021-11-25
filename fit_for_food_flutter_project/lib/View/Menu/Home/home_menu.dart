import 'package:fit_for_food_flutter_project/View/Menu/Foods/Model/foody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// HOME MENU (desayuno - almuerzo - cena)-----------------------------------------------------
class HomeMenu extends StatefulWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            // CALENDARIO (DÍA ACTUAL) --------------------------------------------------------
            _CalendarToday(),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            const Text(
              'Calorías totales',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            // BARRA DE PROGRESO -------------------------------------------------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CustomPaint(
                  painter: OpenPainter1(),
                ),
                CustomPaint(
                  painter: OpenPainter2(),
                )
              ],
            ),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Center(
                  child: Text(
                    '713 cal / 2000 ~ cal',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
            // DESAYUNO -------------------------------------------------------------------
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.green, width: 4.0))),
                    child: const Text('Desayuno',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold))),
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/123/123431.png',
                  scale: 12.0,
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 3.0)),
                const Text(
                  'Manzana',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.end,
                ),
                Expanded(
                  child: RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Colors.black87, fontSize: 14.0),
                        children: [
                          TextSpan(
                            text: '100 g\n',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '52 calorías',
                          ),
                        ]),
                    textAlign: TextAlign.end,
                  ),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/2044/2044936.png',
                  scale: 12.0,
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 3.0)),
                const Text(
                  'Plátano',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.end,
                ),
                Expanded(
                  child: RichText(
                      text: const TextSpan(
                          style:
                              TextStyle(color: Colors.black87, fontSize: 14.0),
                          children: [
                            TextSpan(
                              text: '100 g\n',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '89 calorías ',
                            ),
                          ]),
                      textAlign: TextAlign.end),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),

            // ALMUERZO -------------------------------------------------------------------
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.green, width: 4.0))),
                    child: const Text('Almuerzo',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold))),
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/590/590689.png',
                  scale: 12.0,
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 3.0)),
                const Text(
                  'Piña',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.end,
                ),
                Expanded(
                  child: RichText(
                      text: const TextSpan(
                          style:
                              TextStyle(color: Colors.black87, fontSize: 14.0),
                          children: [
                            TextSpan(
                              text: '100 g\n',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '50 calorías',
                            ),
                          ]),
                      textAlign: TextAlign.end),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/590/590690.png',
                  scale: 12.0,
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 3.0)),
                const Text(
                  'Kiwi',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.end,
                ),
                Expanded(
                  child: RichText(
                      text: const TextSpan(
                          style:
                              TextStyle(color: Colors.black87, fontSize: 14.0),
                          children: [
                            TextSpan(
                              text: '100 g\n',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '61 calorías',
                            ),
                          ]),
                      textAlign: TextAlign.end),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),

            // CENA -------------------------------------------------------------------
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.green, width: 4.0))),
                    child: const Text('Cena',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold))),
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/1514/1514922.png',
                  scale: 12.0,
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 3.0)),
                const Text(
                  'Uvas',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.end,
                ),
                Expanded(
                  child: RichText(
                      text: const TextSpan(
                          style:
                              TextStyle(color: Colors.black87, fontSize: 14.0),
                          children: [
                            TextSpan(
                              text: '100 g\n',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '67 calorías',
                            ),
                          ]),
                      textAlign: TextAlign.end),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),

            // OTROS -------------------------------------------------------------------
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.green, width: 4.0))),
                    child: const Text('Otros',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold))),
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/images/postres.png',
                  scale: 12.0,
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 3.0)),
                const Text(
                  'Postres',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.end,
                ),
                Expanded(
                  child: RichText(
                      text: const TextSpan(
                          style:
                              TextStyle(color: Colors.black87, fontSize: 14.0),
                          children: [
                            TextSpan(
                              text: '70 g\n',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '160 calorías',
                            ),
                          ]),
                      textAlign: TextAlign.end),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
          ],
        ),
      ),
    );
  }
}

// CALENDARIO (DÍA ACTUAL) -----------------------------------------------------------------
Widget _CalendarToday() {
  DateTime date = DateTime.now();
  List<String> month = [
    'Enero',
    'Febrero',
    'Marzo',
    'Abril',
    'Mayo',
    'Junio',
    'Julio',
    'Agosto',
    'Septiembre',
    'Octubre',
    'Noviembre',
    'Dicembre'
  ];

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
      ),
      const Icon(
        Icons.calendar_today_rounded,
        color: Colors.black54,
        size: 20.0,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.0),
      ),
      Text(
        '${date.day} ${month[date.month - 1]}',
        style: const TextStyle(fontSize: 20.0),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
      ),
    ],
  );
}

// PINTADO 1--------------------------------------------------------------------------------
class OpenPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.green.shade400
      ..style = PaintingStyle.fill;
    canvas.drawRect(const Offset(20, 15) & const Size(120, 10), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

// PINTADO 1--------------------------------------------------------------------------------
class OpenPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.green.shade200
      ..style = PaintingStyle.fill;
    canvas.drawRect(const Offset(140, 15) & const Size(170, 10), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
