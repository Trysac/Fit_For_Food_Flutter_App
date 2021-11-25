import 'package:flutter/material.dart';

/*
 ------------------------------------------------------------------------------------------
 CLASE NO USADA 
 - Clase para listar categorías de alimentos
------------------------------------------------------------------------------------------
*/

class ComidasPage extends StatefulWidget {
  ComidasPage({Key? key}) : super(key: key);

  @override
  _ComidasPageState createState() => _ComidasPageState();
}

class _ComidasPageState extends State<ComidasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search), hintText: 'Buscar')),
              const SizedBox(
                height: 25,
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    elevation: 0.0,
                    padding: EdgeInsets.only(
                      top: 20.0,
                      bottom: 20.0,
                      right: 90.0,
                      left: 90.0,
                    ),
                    onPressed: () => {},
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/fruits.png',
                          height: 55.0,
                          width: 55.0,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: new Text(
                            'FRUTAS',
                            style: TextStyle(
                              fontSize: 24,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.pink[200],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    elevation: 0.0,
                    padding: EdgeInsets.only(
                      top: 20.0,
                      bottom: 20.0,
                      right: 73.0,
                      left: 73.0,
                    ),
                    onPressed: () => {},
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/vegetales.png',
                          height: 55.0,
                          width: 55.0,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: new Text(
                            'VERDURAS',
                            style: TextStyle(
                              fontSize: 24,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.cyan[200],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    elevation: 0.0,
                    padding: EdgeInsets.only(
                      top: 20.0,
                      bottom: 20.0,
                      right: 85.0,
                      left: 85.0,
                    ),
                    onPressed: () => {},
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/bebidas.png',
                          height: 55.0,
                          width: 55.0,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: new Text(
                            'BEBIDAS',
                            style: TextStyle(
                              fontSize: 24,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.purple[200],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    elevation: 0.0,
                    padding: EdgeInsets.only(
                      top: 20.0,
                      bottom: 20.0,
                      right: 89.0,
                      left: 89.0,
                    ),
                    onPressed: () => {},
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/postres.png',
                          height: 55.0,
                          width: 55.0,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: new Text(
                            'DULCES',
                            style: TextStyle(
                              fontSize: 24,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.yellow[400],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    elevation: 0.0,
                    padding: EdgeInsets.only(
                      top: 20.0,
                      bottom: 20.0,
                      right: 80.0,
                      left: 80.0,
                    ),
                    onPressed: () => {},
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/lacteos.png',
                          height: 55.0,
                          width: 55.0,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: new Text(
                            'LÁCTEOS',
                            style: TextStyle(
                              fontSize: 24,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.blue[200],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    elevation: 0.0,
                    padding: EdgeInsets.only(
                      top: 20.0,
                      bottom: 20.0,
                      right: 94.0,
                      left: 94.0,
                    ),
                    onPressed: () => {},
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/carnes.png',
                          height: 55.0,
                          width: 55.0,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: new Text(
                            'CARNE',
                            style: TextStyle(
                              fontSize: 24,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.orange[200],
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
