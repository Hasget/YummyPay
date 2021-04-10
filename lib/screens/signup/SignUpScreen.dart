import 'package:flutter/material.dart';
import 'package:flutter_app/screens/signup/widgets/WaveWidget.dart';
import 'package:flutter_app/shared/AppColors.dart';
import 'package:flutter_app/shared/widgets/ButtonsWidget.dart';
import 'package:flutter_app/shared/widgets/TextFieldWidget.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool keyBoardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeOutQuad,
            top: keyBoardOpen ? -size.height / 3.7 : 0.0,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                WaveWidget(
                  height: size.height / 2 - 50  ,
                  width: size.width,
                ),
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text('Create account', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
                    ),

                  ],
                ),
                TextFieldWidget(
                  labelText: 'Name',
                  obscureText: false,
                  prefixIconData: Icons.person_rounded,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFieldWidget(
                  labelText: 'Email',
                  obscureText: false,
                  prefixIconData: Icons.mail_outline,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFieldWidget(
                  labelText: 'Password',
                  obscureText: true,
                  prefixIconData: Icons.lock_outline,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFieldWidget(
                  labelText: 'Confirm password',
                  obscureText: true,
                  prefixIconData: Icons.lock_outline,
                ),
                SizedBox(
                  height: 20.0,
                ),
                GreenButtonWidget(
                    title: 'Create account',
                  onTap: () {
                    print('Sign In');
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                WhiteButtonWidget(
                  title: 'Sign In',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
