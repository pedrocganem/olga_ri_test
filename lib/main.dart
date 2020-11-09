import 'package:flutter/material.dart';
import 'package:olga_ri_test2/app/navigator.dart';
import 'package:olga_ri_test2/app/utils/theme.dart';

void main() {
  runApp(OlgaRiApp());
}

class OlgaRiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Routes routes = Routes();
    return MaterialApp(
      title: 'Olga Ri',
      debugShowCheckedModeBanner: false,
      theme: mainThemeData(context),
      themeMode: ThemeMode.light,
      routes: routes.routes,
      initialRoute: '/',
    );
  }
}