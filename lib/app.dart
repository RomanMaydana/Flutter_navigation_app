import 'package:flutter/material.dart';
import 'package:navigation/ui/screens/home_screen.dart';
import 'package:navigation/ui/screens/second_screen.dart';
import 'package:navigation/ui/screens/third_screen.dart';

import 'ui/screens/fourth_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings settings) {
        print('===== ${settings.name} === ');
        switch (settings.name) {
          case SecondScreen.route:
            return MaterialPageRoute(
               settings: settings,
              builder: (_) => SecondScreen(
                // segundo paso
                 title: settings.arguments as String,
                  
              ));
          case ThirdScreen.route:
            return MaterialPageRoute(
              settings: settings,
              builder: (_) => ThirdScreen(
                args: settings.arguments as ThirdArguments,
              ));
          case FourthScreenScreen.route:
            return MaterialPageRoute(
              settings: settings,
              builder: (_) => FourthScreenScreen());
          default:
            return MaterialPageRoute(
              settings: settings,
              builder: (_) {
              return HomeScreen();
            });
        }
      },
      initialRoute: HomeScreen.route,
      // home: HomeScreen(),
    );
  }
}
