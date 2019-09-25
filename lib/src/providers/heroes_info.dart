import 'package:flutter/material.dart';

class HeroesInfo with ChangeNotifier {

  String _heroes = 'Super Heroes Providers';
  String _desc = 'Accione un boton para generar nombres';
  Color colorBase = Colors.blue;

  get heroe{
    return _heroes;
  }

  get desc{
    return _desc;
  }

  set heroe(String nombre){
    this._heroes = nombre;

    this.colorBase = (nombre == 'Iron Man') ? Colors.red : Colors.blue;

    notifyListeners();
  }

  set desc(String descripcion){
    this._desc = descripcion;

    notifyListeners();
  }

}