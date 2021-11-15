import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            _CalendarToday(),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            const Text(
              'Calorías totales',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
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
                const Icon(
                  Icons.food_bank_rounded,
                  size: 50.0,
                ),
                const Text(
                  'Pan',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: RichText(
                      text: const TextSpan(
                          style:
                              TextStyle(color: Colors.black87, fontSize: 14.0),
                          children: [
                            TextSpan(
                              text: '2 Rebanadas\n',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '156 cal',
                            ),
                          ]),
                      textAlign: TextAlign.end),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Icon(
                  Icons.food_bank_rounded,
                  size: 50.0,
                ),
                const Text(
                  'Leche',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: RichText(
                      text: const TextSpan(
                          style:
                              TextStyle(color: Colors.black87, fontSize: 14.0),
                          children: [
                            TextSpan(
                              text: '1 Vaso\n',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '80 cal',
                            ),
                          ]),
                      textAlign: TextAlign.end),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            ElevatedButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                icon: const Icon(
                  Icons.add_circle,
                ),
                label: const Text('Agregar elemento')),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
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
                const Icon(
                  Icons.food_bank_rounded,
                  size: 50.0,
                ),
                const Text(
                  'Pollo',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: RichText(
                      text: const TextSpan(
                          style:
                              TextStyle(color: Colors.black87, fontSize: 14.0),
                          children: [
                            TextSpan(
                              text: '146 g\n',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '180 cal',
                            ),
                          ]),
                      textAlign: TextAlign.end),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Icon(
                  Icons.food_bank_rounded,
                  size: 50.0,
                ),
                const Text(
                  'Quinua',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: RichText(
                      text: const TextSpan(
                          style:
                              TextStyle(color: Colors.black87, fontSize: 14.0),
                          children: [
                            TextSpan(
                              text: '200 g\n',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '174 cal',
                            ),
                          ]),
                      textAlign: TextAlign.end),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            ElevatedButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                icon: const Icon(
                  Icons.add_circle,
                ),
                label: const Text('Agregar elemento')),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
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
                const Icon(
                  Icons.food_bank_rounded,
                  size: 50.0,
                ),
                const Text(
                  'Galletas',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: RichText(
                      text: const TextSpan(
                          style:
                              TextStyle(color: Colors.black87, fontSize: 14.0),
                          children: [
                            TextSpan(
                              text: '90 g\n',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '123 cal',
                            ),
                          ]),
                      textAlign: TextAlign.end),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            ElevatedButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                icon: const Icon(
                  Icons.add_circle,
                ),
                label: const Text('Agregar elemento')),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
          ],
        ),
      ),
    );
  }
}

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
      const Icon(
        Icons.keyboard_arrow_left_rounded,
        color: Colors.black54,
        size: 40.0,
      ),
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
      const Icon(
        Icons.keyboard_arrow_right_rounded,
        color: Colors.black54,
        size: 40.0,
      ),
    ],
  );
}

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
