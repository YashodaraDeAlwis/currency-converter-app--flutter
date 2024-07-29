import 'package:currecny_converter_app/bindings/initial_bindings.dart';
import 'package:currecny_converter_app/config/values.dart';
import 'package:currecny_converter_app/core/routes/pages.dart';
import 'package:currecny_converter_app/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  // only include sentry in the release build
  await SentryFlutter.init(
    (options) => options..dsn = Values.sentry,
    appRunner: () => _appRunner(),
  );
}

Future<void> _appRunner() async {
  runApp(const CurrencyConverter());
}

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Values.title,
      getPages: pages,
      initialRoute: Routes.splash,
      defaultTransition: Transition.cupertinoDialog,
      initialBinding: InitialBindings(),
    );
  }
}
