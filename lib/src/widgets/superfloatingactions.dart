import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example2/src/providers/heroes_info.dart';
import 'package:provider_example2/src/providers/villanos_info.dart';

class SuperFloatingAction extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.access_alarm),
          backgroundColor: Colors.red, 
          onPressed: () {
            heroesInfo.heroe = 'Iron Man';
            heroesInfo.desc = 'Tony Stark';
            villanosInfo.villano = 'Mandarin';
          },
        ),
        SizedBox(height: 10.0,),
         FloatingActionButton(
          child: Icon(Icons.account_box),
          backgroundColor: Colors.blue, 
          onPressed: () {
            heroesInfo.heroe = 'Capitan America';
            heroesInfo.desc = 'Steve Royers';
            villanosInfo.villano = 'Red Skull';
          },
        )
      ],
    );
  }
} 