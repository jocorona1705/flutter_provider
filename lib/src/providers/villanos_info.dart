import 'package:flutter/material.dart';

class VillanosInfo with ChangeNotifier {

  String _villano = 'Villanos Providers';
  Color colorBase = Colors.blue;

  get villano{
    return _villano;
  }

  set villano(String nombre){
    this._villano = nombre;

    this.colorBase = (nombre == 'Mandarin') ? Colors.red : Colors.blue;

    notifyListeners();
  }

}