import 'package:flutter/material.dart';

import 'package:formbloc/src/blocs/login_bloc.dart';
export 'package:formbloc/src/blocs/login_bloc.dart';

class Provaider extends InheritedWidget {
  
  static Provaider _instancia;

  factory Provaider({ Key key, Widget child}) {
    if (_instancia == null) {
      _instancia = new Provaider._internal(key: key,child: child);
    }

    return _instancia;
  }

  Provaider._internal({ Key key, Widget child})
    :super(key: key, child: child);

  final loginBloc = LoginBloc();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static LoginBloc of (BuildContext context) {
    return (context.inheritFromWidgetOfExactType(Provaider) as Provaider).loginBloc;
  } 

}