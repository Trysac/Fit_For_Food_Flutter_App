import 'package:flutter/material.dart';

import 'Page/filter_local_list_page.dart';
import 'Page/filter_network_list_page.dart';

class ComidasPage extends StatefulWidget {
  ComidasPage({Key? key}) : super(key: key);

  @override
  _ComidasPageState createState() => _ComidasPageState();
}

class _ComidasPageState extends State<ComidasPage> {
int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: builPages(),
    );
  }

  Widget builPages() {
     switch (index) {
      case 0:
        return FilterLocalListPage();
      case 1:
        return FilterNetworkListPage();
      default:
        return Container();
    }
  
   }
}