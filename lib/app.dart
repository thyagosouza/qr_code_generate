import 'package:flutter/material.dart';

import 'app_view.dart';
import 'screens/pages/qr_code_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: "/",
      routes: {
        "/": (_) => const QrCodePage(),
        "/app_view": (_) => const AppView(),
        "/qr_code_page": (_) => const QrCodePage(),
      },
    );
  }
}
