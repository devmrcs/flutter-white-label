import 'package:lib_flavor_core/lib_flavor_core.dart';

import 'config_files/invest_assets.dart';
import 'config_files/invest_strings.dart';
import 'config_files/invest_theme.dart';

class FlavorConfigData extends IFlavorConfigData {
  FlavorConfigData()
      : super(
          assets: InvestAssets(),
          strings: InvestStrings(),
          theme: InvestTheme(),
        );
}
