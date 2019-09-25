import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example2/src/providers/heroes_info.dart';
import 'package:provider_example2/src/widgets/super_text.dart';
import 'package:provider_example2/src/widgets/superfloatingactions.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final heroesInfo = Provider.of<HeroesInfo>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(heroesInfo.heroe),
      ),
      body: Center(
        child: SuperText(),
        ),
      floatingActionButton: SuperFloatingAction(),
    );
  }
}  