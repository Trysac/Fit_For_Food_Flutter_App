import 'package:flutter/material.dart';

import '../Menu/home_page.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  // DateTime? _dateTime;
  String? genreSelectedValue;
  String? activityLevelSelectedValue;

  // String getDate() {
  //   if (_dateTime == null) {
  //     return '';
  //   } else {
  //     return '${_dateTime!.day}/${_dateTime!.month}/${_dateTime!.year}';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Formulario'),
        ),
        body: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  const Padding(padding: EdgeInsets.symmetric(vertical: 25.0)),
                  Row(children: <Widget>[
                    Container(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.green, width: 4.0))),
                        child: const Text('Llenar el formulario',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)))
                  ]),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),

                  // datepicker Button
                  // TextFormField(
                  //   controller: TextEditingController(text: getDate()),
                  //   keyboardType: TextInputType.,
                  //   decoration: const InputDecoration(
                  //       labelText: 'Fecha de nacimiento',
                  //       border: OutlineInputBorder(),
                  //       prefixIcon: Icon(Icons.date_range)),
                  //   onTap: () {
                  //     showDatePicker(
                  //             context: context,
                  //             initialDate: _dateTime ?? DateTime.now(),
                  //             firstDate: DateTime(DateTime.now().year - 100),
                  //             lastDate: DateTime(DateTime.now().year + 100))
                  //         .then((date) {
                  //       setState(() {
                  //         _dateTime = date;
                  //       });
                  //     });
                  //   },
                  // ),
                  TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          labelText: 'Edad',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person_rounded))),
                  const SizedBox(height: 20),
                  TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          labelText: 'Peso (kg)',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.monitor_weight_rounded))),
                  const SizedBox(height: 20),
                  TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Estatura (cm)',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.height_rounded),
                      )),
                  const SizedBox(height: 20),
                  DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem<String>(
                        child: Text('Femenino'),
                        value: 'F',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('Masculino'),
                        value: 'M',
                      ),
                    ].toList(),
                    value: genreSelectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        genreSelectedValue = value;
                      });
                    },
                    decoration: const InputDecoration(
                      labelText: 'Género',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.people_rounded),
                    ),
                  ),
                  const SizedBox(height: 20),
                  DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem<String>(
                        child: Text('Sedentario'),
                        value: 'S',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('Poco activo'),
                        value: 'P',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('Activo'),
                        value: 'A',
                      ),
                      DropdownMenuItem<String>(
                        child: Text('Muy activo'),
                        value: 'M',
                      ),
                    ].toList(),
                    value: activityLevelSelectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        activityLevelSelectedValue = value;
                      });
                    },
                    decoration: const InputDecoration(
                      labelText: 'Nivel de actividad',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.people_rounded),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
                  Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          },
                          color: Colors.green,
                          child: const Text('Aceptar',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white))))
                ]))));
  }
}
