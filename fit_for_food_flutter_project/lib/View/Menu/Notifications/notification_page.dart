import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  String? foodwatSelectedValue;
  String? _selectedTime;

  final List<String> opciones = <String>['Comida', 'Agua', 'Agua', 'Comida'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificaciones'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 130.0,
                  width: 130.0,
                  child: Image.asset('assets/images/notificacion.png'),
                ),
                SizedBox(height: 20.0),
                Text(
                    'Activar notificaciones',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
                
                DropdownButtonFormField(
                  items: [
                    DropdownMenuItem<String>(
                        child: Row(
                          children: [
                            Icon(Icons.food_bank),
                            Text(' Comida'),
                          ],
                        ),
                        value: 'C',
                      ),
                      DropdownMenuItem<String>(
                        child: Row(
                          children: [
                            Icon(Icons.water),
                            Text(' Agua'),
                          ],
                        ),
                        value: 'A',
                      ),
                  ].toList(),
                  value: foodwatSelectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        foodwatSelectedValue = value;
                      });
                    },
                    decoration: const InputDecoration(
                      labelText: 'Seleccionar',
                      border: OutlineInputBorder(),
                      //prefixIcon: Icon(Icons.food_bank),
                    ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  
                 onPressed: _show, child: Text('Elegir hora', textScaleFactor: 1.2)
                 ),
                 SizedBox(height: 10),
                Text(
                  _selectedTime != null ? _selectedTime! : '',
                 style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 15),
                Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        
                      },
                      color: Colors.green,
                      child: const Text(
                        'Guardar',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                SizedBox(height: 20),
                Text('Historial de comida y agua', style: TextStyle(fontWeight: FontWeight.bold), textScaleFactor: 1.5),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Table(
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          Center(child: Text("Menú del día")),
                          Center(child: Text("Hora")),
                        ],
                      ),
                      TableRow(
                        children: [
                          Center(child: Text("Comida")),
                          Center(child: Text("13:00")),
                        ],
                      ),
                      TableRow(
                        children: [
                          Center(child: Text("Agua")),
                          Center(child: Text("13:20")),
                        ],
                      ),
                      TableRow(
                        children: [
                          Center(child: Text("Agua")),
                          Center(child: Text("15:00")),
                        ],
                      ),
                      TableRow(
                        children: [
                          Center(child: Text("Comida")),
                          Center(child: Text("18:00")),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
              
            ),
          ),
        ),
      ),
    );
  }
  
   Future<void> _show() async {
    final TimeOfDay? result =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (result != null) {
      setState(() {
        _selectedTime = result.format(context);
      });
    }
  }

 
 
   
  }

