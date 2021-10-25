import 'package:flutter/material.dart';

import '../Login/login_page.dart';
import 'Home/home_menu.dart';
import 'Reports/reports_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _actualPage = 0;
  final List<Widget> _pages = [
    const HomeMenu(),
    const ReportsMenu(),
    const Menu3(),
    const Menu4()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fit For Food',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text('Fit For Food'),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 35.0,
                ),
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: const BoxDecoration(color: Colors.green),
                  child: Stack(
                    children: <Widget>[
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://media.istockphoto.com/vectors/user-profile-login-or-access-authentication-icon-button-people-sign-vector-id1200064755?s=170x170'),
                          radius: 50.0,
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Usuario',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Align(
                        alignment:
                            Alignment.centerRight + const Alignment(0, 0.3),
                        child: const Text(
                          'email@gmail.com',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                      Align(
                        alignment:
                            Alignment.centerRight + const Alignment(0, 0.9),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text('Premium',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const ListTile(
                    leading: Icon(Icons.people_outline),
                    title: Text('Nosotros')),
                const ListTile(
                    leading: Icon(Icons.dark_mode_outlined),
                    title: Text('Modo nocturno')),
                const ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Configuración')),
                MaterialButton(
                  padding: const EdgeInsets.only(right: 10.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: const ListTile(
                      leading: Icon(Icons.exit_to_app),
                      title: Text('Cerrar sesión')),
                )
              ],
            ),
          ),
          body: _pages[_actualPage],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.green,
            unselectedItemColor: Colors.black45,
            selectedItemColor: Colors.white,
            iconSize: 36.0,
            type: BottomNavigationBarType.fixed,
            currentIndex: _actualPage,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.stacked_bar_chart), label: 'Reportes'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.food_bank), label: 'Comidas'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.monitor_weight), label: 'Peso')
            ],
            onTap: (index) {
              setState(() {
                _actualPage = index;
              });
            },
          )),
    );
  }
}

class Menu3 extends StatelessWidget {
  const Menu3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Comidas'),
    );
  }
}

class Menu4 extends StatelessWidget {
  const Menu4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Peso'),
    );
  }
}
