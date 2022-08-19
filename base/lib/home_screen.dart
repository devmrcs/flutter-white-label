import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IFlavorConfigData flavorData = FlavorConfig.of(context);
    final IFlavorTheme theme = IFlavorTheme.of(context);
    final IFlavorAssets assets = IFlavorAssets.of(context);
    final IFlavorStrings strings = IFlavorStrings.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(strings.flavorName),
        backgroundColor: theme.brandColors.primaryPure,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Image.asset(assets.logo),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: flavorData.theme.brandColors.primaryPure,
              ),
              child: Text(
                flavorData.strings.textButton,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
