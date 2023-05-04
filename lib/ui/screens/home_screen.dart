import 'package:flutter/material.dart';
import 'package:navigation/ui/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const route ='/';

  String tooString() => 'Hola soy Roman';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Estoy en Home Screen'),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).push(MaterialPageRoute(builder: (_)=> SecondScreen()));
            //   },
            //   child: Text('Ir a Second Screen 1ERA forma'),
            // ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SecondScreen.route,arguments: 'Navegacion desde Home Screen');
              },
              child: Text('Ir a Second Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(SecondScreen.route);
              },
              child: Text('Reemplazar con Second Screen'),
            ),
            // ElevatedButton(
            //   onPressed: () {
                
            //     final canPop = Navigator.of(context).canPop();
            //     print(canPop);
            //   },
            //   child: Text('Hay pantalla atras?'),
            // )
          ],
        ),
      ),
    );
  }
}
