
import 'package:flutter/material.dart';
import '../core/error/error_page.dart';
import '../features/home/presentation/pages/home_page.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoutes(RouteSettings routeSettings) {
    late Route<dynamic> pageRoute;
    // Object? arg = routeSettings.arguments;

    switch (routeSettings.name) {
      
      case HomePage.routeName:
        pageRoute = MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
        break;
      default:
        pageRoute = MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );
    }
    return pageRoute;
  }

  static Route<dynamic> onUnknownRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(builder: (context) => const ErrorPage());
  }
}
