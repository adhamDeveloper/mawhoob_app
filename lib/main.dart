import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mawhoop/screens/auth_screen.dart';
import 'package:mawhoop/screens/chat_person_screen.dart';
import 'package:mawhoop/screens/chat_screen.dart';
import 'package:mawhoop/screens/main_screen.dart';
import 'package:mawhoop/screens/succsses_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[200],
          textTheme: GoogleFonts.cairoTextTheme(textTheme).copyWith(
            bodyText1: GoogleFonts.cairo(
              fontWeight: FontWeight.bold,
                textStyle: textTheme.bodyText2, fontSize: 30),
          )),
      initialRoute: '/auth_screen',
      routes: {
        '/auth_screen': (context) => AuthScreen(),
        '/succsses_screen': (context) => SuccssesScreen(),
        '/main_screen': (context) => MainScreen(),
        '/chat_screen': (context) => ChatScreen(),
        '/chat_person_screen': (context) => ChatScreenPerson(),
      },
    );
  }
}
