import 'package:flutter/material.dart';
import 'package:formbloc/src/blocs/provaider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    final bloc = Provaider.of(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Email: ${bloc.email}'),
          Divider(),
          Text('Password: ${bloc.password}'),
        ],
      ),
    );
  }
}