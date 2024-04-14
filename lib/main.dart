import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/modules/app_modules.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const FinancaApp(),
    ),
  );
}

class FinancaApp extends StatelessWidget {
  const FinancaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Carteira Cest',
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
    );
  }
}
