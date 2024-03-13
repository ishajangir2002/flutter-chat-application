import 'package:flutter/material.dart';
import 'Screens/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Application',
      theme: ThemeData(
        fontFamily: "OpenSans",
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xff075e54),
          onPrimary: Colors.white,
          secondary: Color(0xff075e54),
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.red,
          background: Colors.white,
          onBackground: Color(0xff075e54),
          surface: Colors.white,
          onSurface: Colors.white,
        ),
        // primaryColor: const Color(0xff075e54),
        // accentColor: const Color(0xff128C7E),
        useMaterial3: true, // This line can be removed if not needed
      ),
      home: const HomeScreen(),
    );
  }
}
