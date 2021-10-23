import 'package:fit_for_food_flutter_project/View/Login%20y%20Registro/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Center(
        child: LoginPage(),
      ),
    );
  }
}
