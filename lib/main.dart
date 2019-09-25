import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example2/src/pages/home_page.dart';
import 'package:provider_example2/src/providers/heroes_info.dart';
import 'package:provider_example2/src/providers/villanos_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  // Primer ejemplo de como usar una sola clase de provider
  // @override
  // Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //     builder: (context) => HeroesInfo(),
  //     child: MaterialApp(
  //       title: 'Material App',
  //       initialRoute: 'home',
  //       routes: {'home': (context) => HomePage()},
  //     ),
  //   );
  // }

  //segundo ejemplo es usar una lista
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (context) => HeroesInfo() ),
        ChangeNotifierProvider(builder: (context) => VillanosInfo() )
      ],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {'home': (context) => HomePage()}, //pruebas de git
      ),
    );
  }
}
