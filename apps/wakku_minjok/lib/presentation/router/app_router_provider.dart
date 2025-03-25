import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wakku_minjok/presentation/router/routes/route.dart';

part 'app_router_provider.g.dart';

@riverpod
GoRouter appRouter(Ref ref) => GoRouter(
  observers: <NavigatorObserver>[],
  debugLogDiagnostics: true,
  routes: $appRoutes,
);
