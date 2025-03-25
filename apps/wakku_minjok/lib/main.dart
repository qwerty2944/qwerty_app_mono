import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'flavors.dart';
import 'wakku_app.dart';

Future<void> main() async {
  F.appFlavor = Flavor.values.firstWhere(
    (Flavor element) => element.name == appFlavor,
  );

  final ProviderContainer container = ProviderContainer(
    observers: <ProviderObserver>[],
    overrides: <Override>[],
  );

  runApp(
    UncontrolledProviderScope(
      container: container, //
      child: const WakkuApp(),
    ),
  );
}
