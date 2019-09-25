import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example2/src/providers/heroes_info.dart';
import 'package:provider_example2/src/providers/villanos_info.dart';

class SuperText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[


        //Trabaja con Consumer haciendo referencia a la clase, tendria que ser un widget de consumer por cada provider
        // Consumer<HeroesInfo>(
        //   builder: (context, heroesInfo, _) => Text(
        //     heroesInfo.desc,
        //     style: TextStyle(fontSize: 30.0, color: heroesInfo.colorBase),
        //   ),
        // )

        Text(
          heroesInfo.desc,
          style: TextStyle(
            fontSize: 30.0,
            color: heroesInfo.colorBase
          ),
        ),
        Text(
          villanosInfo.villano,
          style: TextStyle(
            fontSize: 25.0,
            color: heroesInfo.colorBase
          ),
        ),
      ],
    );
  }
}
