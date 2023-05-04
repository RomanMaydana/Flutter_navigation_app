import 'package:flutter/material.dart';
import 'package:navigation/ui/screens/fourth_screen.dart';
import 'package:navigation/ui/screens/home_screen.dart';

class ThirdArguments {
  final String name;
  final String edad;

  ThirdArguments(this.name, this.edad);
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key, required this.args});
  static const route = '/third_screen';
  final ThirdArguments args;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('${args.name} ${args.edad}'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Estoy en Third Screen'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  HomeScreen.route,
                  (route) {
                    print(route.settings.name);
                    return false;
                  },
                );
              },
              child: Text('Retornar a Home Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    FourthScreenScreen.route,
                    ModalRoute.withName(HomeScreen.route));
              },
              child: Text('limpiar Navegacion y push Fourth Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                final canPop = Navigator.of(context).canPop();
                print(canPop);
              },
              child: Text('Hay pantalla atras?'),
            )
          ],
        ),
      ),
    );
  }
}
