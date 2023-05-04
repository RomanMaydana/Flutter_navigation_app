import 'package:flutter/material.dart';
import 'package:navigation/ui/screens/third_screen.dart';

class FourthScreenScreen extends StatelessWidget {
  const FourthScreenScreen({super.key});
  static const route = '/fourth_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Estoy en Fourth Screen'),
           
          
          ],
        ),
      ),
    );
  }
}
