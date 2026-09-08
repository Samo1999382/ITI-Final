import 'package:flutter/material.dart';
import 'package:test2/screens/NavScreen/Nav.dart';
import 'package:test2/screens/signUpScreen/signUpScreen.dart';
import 'package:test2/widgets/saleWidget.dart';
import 'package:test2/widgets/textInput.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test2/widgets/themedButton.dart';

class logInScreen extends StatefulWidget {

  const logInScreen({super.key});

  @override
  State<logInScreen> createState() => _logInScreenState();
}

class _logInScreenState extends State<logInScreen> {
  bool st = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsGeometry.only(top: 35, right: 30, left: 30),
        child: SingleChildScrollView(child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 60,),
            saleWidget(),
            SizedBox(height: 60,),
            textInput(text: 'Enter your name', hint: 'User Name',),
            SizedBox(height: 30,),
            textInput(text: 'Password', hint: 'Enter your password', suf: true,),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 5, vertical: 10)
              ,child:
                Row(
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Checkbox(
                        value: st,
                        onChanged: (bool? value) {
                          setState(() {
                            st = value ?? false;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        side: const BorderSide(
                          color: Color(0xff0A97B0),
                          width: 1,
                        ),
                        activeColor: Color(0xff0A97B0),
                        checkColor: Colors.black,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Remember Me',
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Forgot Password?',
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
            ),
            SizedBox(height: 5,),
            themedButton(text: 'Login',dir: MainNavigationScreen()),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(vertical: 10),
              child:
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0x7f000000)
                  ),
                ),
                GestureDetector(
                  child: Text(
                    'Sign up',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black,
                        decoration: TextDecoration.underline
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => signUpScreen()),);
                  },
                )
              ],
            )
            )
          ],
        ),
      )
      )
    );
  }
}
