import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wakku_minjok/presentation/screens/home/home_screen.dart';

part 'route.g.dart';

@TypedGoRoute<HomeRoute>(path: HomeRoute.path, name: HomeRoute.name)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const String path = '/';
  static const String name = 'home';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}
