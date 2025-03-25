import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wakku_minjok/presentation/router/app_router_provider.dart';

import 'flavors.dart';

class WakkuApp extends ConsumerWidget {
  const WakkuApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(appRouterProvider),
      debugShowCheckedModeBanner: F.appFlavor == Flavor.dev,
      title: F.title,
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: _flavorBanner(child: MyHomePage(), show: kDebugMode),
    );
  }
}
