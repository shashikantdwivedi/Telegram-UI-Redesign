import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'screens/user_settings.dart';

void main() {
  runApp(App());
}


class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xFF2675EC)
      ),
      initialRoute: '/mainScreen',
      routes: {
        '/mainScreen': (context) => MainScreen(),
        '/settings': (context) => UserSettings()
      },
    );
  }
}