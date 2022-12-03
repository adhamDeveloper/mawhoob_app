import 'package:flutter/material.dart';
import 'package:mawhoop/screens/auth_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/auth_screen',
      routes: {
        '/auth_screen': (context) => AuthScreen(),
      },
    );
  }
}
