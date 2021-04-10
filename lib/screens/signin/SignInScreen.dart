import 'package:flutter/material.dart';
import 'package:flutter_app/screens/signin/widgets/OrWidget.dart';
import 'package:flutter_app/screens/signin/widgets/WaveWidget.dart';
import 'package:flutter_app/screens/signup/SignUpScreen.dart';
import 'package:flutter_app/shared/AppColors.dart';
import 'package:flutter_app/shared/widgets/ButtonsWidget.dart';
import 'package:flutter_app/shared/widgets/TextFieldWidget.dart';

class SignInScreen extends StatelessWidget {
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
                  height: size.height / 2 - 50,
                  width: size.width,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset('assets/images/logo3.png', width: 60),
                      Padding(
                        padding: EdgeInsets.only(top: 25, left: 10),
                        child: Image.asset('assets/images/logo.png', width: 170),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextFieldWidget(
                  labelText: 'Email',
                  obscureText: false,
                  prefixIconData: Icons.mail_outline,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextFieldWidget(
                      labelText: 'Password',
                      obscureText: true,
                      prefixIconData: Icons.lock_outline,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Forgot password?',
                      style: TextStyle(color: AppColors.mainGreen),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                GreenButtonWidget(
                  title: 'Sign In',
                  onTap: () {
                    print('Sign In');
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                GoogleButtonWidget(
                  title: 'Sign in with Google',
                  onTap: () {
                    print('Sign In');
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                OrWidget(),
                SizedBox(
                  height: 20.0,
                ),
                BaseTextButtonWidget(
                  title: 'Create an account',
                  color: AppColors.mainGreen,
                  fontSize: 16,
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => SignUpScreen()
                    ));
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
