import 'package:flutter/material.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _CalendarToday(),
        const SizedBox(
          child: Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Center(
              child: Text(
                'Calorías totales',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          child: Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Row(
                children: <Widget>[
                  CustomPaint(
                    painter: OpenPainter1(),
                  ),
                  CustomPaint(
                    painter: OpenPainter2(),
                  )
                ],
              )),
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
        const SizedBox(
          child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Image(image: AssetImage('assets/images/01.JPG'))),
        ),
        const SizedBox(
            child: Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: ButtonBar(
            alignment: MainAxisAlignment.start,
            buttonTextTheme: ButtonTextTheme.normal,
            children: <Widget>[
              Icon(
                Icons.add_circle,
                color: Colors.green,
                size: 30.0,
              ),
              Text(
                'Agregar elemento',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        )),
        const SizedBox(
          child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Image(image: AssetImage('assets/images/02.JPG'))),
        ),
        const SizedBox(
            child: Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: ButtonBar(
            alignment: MainAxisAlignment.start,
            buttonTextTheme: ButtonTextTheme.normal,
            children: <Widget>[
              Icon(
                Icons.add_circle,
                color: Colors.green,
                size: 30.0,
              ),
              Text(
                'Agregar elemento',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        )),
        const SizedBox(
          child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Image(image: AssetImage('assets/images/03.JPG'))),
        ),
        const SizedBox(
            child: Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: ButtonBar(
            alignment: MainAxisAlignment.start,
            buttonTextTheme: ButtonTextTheme.normal,
            children: <Widget>[
              Icon(
                Icons.add_circle,
                color: Colors.green,
                size: 30.0,
              ),
              Text(
                'Agregar elemento',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        )),
      ],
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
      const Padding(
        padding: EdgeInsets.only(top: 60.0),
      ),
      const SizedBox(
        child: Icon(
          Icons.keyboard_arrow_left_rounded,
          color: Colors.black54,
          size: 40.0,
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
      ),
      const SizedBox(
        child: Icon(
          Icons.calendar_today,
          color: Colors.black54,
          size: 20.0,
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(right: 12.0),
      ),
      SizedBox(
        child: Text(
          '${date.day} ${month[date.month - 1]}',
          style: const TextStyle(fontSize: 20.0),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
      ),
      const SizedBox(
        child: Icon(
          Icons.keyboard_arrow_right_rounded,
          color: Colors.black54,
          size: 40.0,
        ),
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
    canvas.drawRect(const Offset(50, 15) & const Size(120, 10), paint1);
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
    canvas.drawRect(const Offset(170, 15) & const Size(175, 10), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
