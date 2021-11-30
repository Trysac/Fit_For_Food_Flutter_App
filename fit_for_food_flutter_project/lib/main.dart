import 'package:fit_for_food_flutter_project/Services/auth_services.dart';
import 'package:fit_for_food_flutter_project/Services/notifications_services.dart';
import 'package:fit_for_food_flutter_project/View/Menu/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'View/Login/login_page.dart';

void main() => runApp(AppState());

// AGREGADO: Relación con los services
class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthServices()),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => LoginPage(),
        'homePage': (_) => HomePage(),
      },
      scaffoldMessengerKey: NotificationsServices.messengerKey,
    );
  }
}
