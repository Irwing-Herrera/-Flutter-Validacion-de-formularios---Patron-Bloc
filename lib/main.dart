import 'package:flutter/material.dart';

import 'package:formbloc/src/blocs/provaider.dart';

import 'package:formbloc/src/pages/home_page.dart';
import 'package:formbloc/src/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provaider(
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'home': (BuildContext context) => HomePage()
      },
      theme: ThemeData(
        primaryColor: Color.fromRGBO(1, 111, 138, 1.0)
      ),
    ));
  }
}
