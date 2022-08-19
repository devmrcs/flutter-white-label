import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IFlavorConfigData flavorData = FlavorConfigData();

    return FlavorConfig(
      data: flavorData,
      child: MaterialApp(
        theme: flavorData.theme.toMaterialThemeData(),
        home: const HomeScreen(),
      ),
    );
  }
}
