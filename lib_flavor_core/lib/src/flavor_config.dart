import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lib_flavor_core/src/flavor_config_data.dart';

class FlavorConfig extends StatelessWidget {
  const FlavorConfig({
    Key? key,
    required this.data,
    required this.child,
  }) : super(key: key);

  final IFlavorConfigData data;

  final Widget child;

  static const IFlavorConfigData _kFallbackConfigData =
      IFlavorConfigData.fallback();

  static IFlavorConfigData of(BuildContext context) {
    final _InheritedConfigData? inheritedConfigData =
        context.dependOnInheritedWidgetOfExactType<_InheritedConfigData>();
    final IFlavorConfigData data =
        inheritedConfigData?.config.data ?? _kFallbackConfigData;

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedConfigData(
      config: this,
      child: child,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty<IFlavorConfigData>('data', data, showName: false));
  }
}

class _InheritedConfigData extends InheritedTheme {
  const _InheritedConfigData({
    Key? key,
    required this.config,
    required Widget child,
  }) : super(key: key, child: child);

  final FlavorConfig config;

  @override
  Widget wrap(BuildContext context, Widget child) {
    return FlavorConfig(
      data: config.data,
      child: Theme(
        data: config.data.theme.toMaterialThemeData(),
        child: child,
      ),
    );
  }

  @override
  bool updateShouldNotify(_InheritedConfigData old) =>
      config.data != old.config.data;
}
