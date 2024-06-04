import 'package:flutter/material.dart';
import 'package:paystreet/src/core/navigators/routes_names.dart';
import 'package:paystreet/src/features/presentation/presentation.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.startUp:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: const HomeNavigation()
      );
   
    default:
      return MaterialPageRoute<void>(
        builder: (_) => Scaffold(
          body: Center(
            child: Text(
              'No route defined for ${settings.name}',
            ),
          ),
        ),
      );
  }
}

// ignore: strict_raw_type, unused_element
PageRoute _getPageRoute({String? routeName, Widget? viewToShow}) {
  return MaterialPageRoute<void>(
    settings: RouteSettings(
      name: routeName,
    ),
    builder: (_) => viewToShow!,
  );
}