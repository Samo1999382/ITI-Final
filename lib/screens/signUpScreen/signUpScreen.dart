import 'package:flutter/material.dart';
import 'package:test2/screens/NavScreen/Nav.dart';
import 'package:test2/screens/loginScreen/logInScreen.dart';
import 'package:test2/widgets/saleWidget.dart';
import 'package:test2/widgets/textInput.dart';
import 'package:test2/widgets/themedButton.dart';
import 'package:google_fonts/google_fonts.dart';

class signUpScreen extends StatelessWidget {
  const signUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsGeometry.only(top: 35, right: 30, left: 30),
        child: SingleChildScrollView(child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 50,),
            saleWidget(),
            SizedBox(height: 35,),
            textInput(text: 'Email', hint: 'user@gmail.com'),
            SizedBox(height: 10,),
            textInput(text: 'Password', hint: '********', suf: true,),
            SizedBox(height: 10,),
            textInput(text: 'Confirm Password', hint: '********', suf: true,),
            SizedBox(height: 45,),
            themedButton(text: 'Create account',dir: MainNavigationScreen()),
            SizedBox(height: 70,),
            Padding(
                padding: EdgeInsetsGeometry.symmetric(vertical: 10),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0x7f000000)
                      ),
                    ),
                    GestureDetector(
                      child: Text(
                        'Login',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black,
                            decoration: TextDecoration.underline
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => logInScreen()),);
                      },
                    )
                  ],
                )
            )
          ],
        ),
      ),
      )
    );
  }
}
