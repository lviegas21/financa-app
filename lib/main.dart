import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main/home/home_page_factory.dart';

void main() {
  runApp(const FinancaApp());
}

class FinancaApp extends StatelessWidget {
  const FinancaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: makeHomePageFactory,
            transition: Transition.circularReveal),
      ],
    );
  }
}
