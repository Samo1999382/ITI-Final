import 'package:flutter/material.dart';
import 'package:test2/widgets/saleWidget.dart';
import 'package:test2/widgets/textInput.dart';

class logInScreen extends StatelessWidget {
  const logInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(35),
        child: Column(
          children: [
            SizedBox(height: 50,),
            saleWidget(),
            textInput()
          ],
        ),
      )
    );
  }
}
