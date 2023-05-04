import 'package:flutter/material.dart';
import 'package:navigation/ui/screens/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.title});
  // declarar : primer paso 
  final String title;
  static const route = '/second_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Estoy en Second Screen'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Retornar a Home Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(ThirdScreen.route, arguments: ThirdArguments('Roman', '25'));
              },  
              child: Text('Ir a Thrid Screen'),
            ),
            //  ElevatedButton(
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
