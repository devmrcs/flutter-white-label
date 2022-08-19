import 'package:lib_flavor_core/lib_flavor_core.dart';

import 'config_files/bank_assets.dart';
import 'config_files/bank_strings.dart';
import 'config_files/bank_theme.dart';

class FlavorConfigData extends IFlavorConfigData {
  FlavorConfigData()
      : super(
          assets: BankAssets(),
          strings: BankStrings(),
          theme: BankTheme(),
        );
}
