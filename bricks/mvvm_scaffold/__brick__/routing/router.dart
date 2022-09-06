import 'package:flutter/material.dart';
import '../pages/auth_wrapper.dart';
import 'routing_constants.dart' as router_strings;

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => AuthWrapper());
    default:
      return MaterialPageRoute(builder: (_) => AuthWrapper());
  }
}
