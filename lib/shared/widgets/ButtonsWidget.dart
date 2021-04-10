import 'package:flutter/material.dart';
import 'package:flutter_app/shared/AppColors.dart';

class BaseButtonWidget extends StatelessWidget {
  final String title;
  final String iconPath;
  final bool hasBorder;
  final Function onTap;
  final MainAxisAlignment alignment;
  final Color background;
  final Color color;
  final Color borderColor;

  const BaseButtonWidget({
    this.title,
    this.iconPath,
    this.hasBorder,
    this.onTap,
    this.alignment = MainAxisAlignment.center,
    this.background = AppColors.mainGreen,
    this.color = AppColors.white,
    this.borderColor = AppColors.mainGreen,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(10.0),
            border: hasBorder
                ? Border.all(
                    color: borderColor,
                    width: 1.0,
                  )
                : Border.fromBorderSide(BorderSide.none),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 48,
            decoration: BoxDecoration(

            ),
            child: Row(
              mainAxisAlignment: alignment,
              children: <Widget>[
                if(iconPath != null)
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Image.asset(iconPath, width: 25, height: 25),
                  )
                ,
                Text(
                  title,
                  style: TextStyle(
                    color: color, fontWeight: FontWeight.w600, fontSize: 16
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BaseTextButtonWidget extends StatelessWidget {
  final String title;
  final Function onTap;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;


  const BaseTextButtonWidget({
    this.title,
    this.onTap,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          title,
          style: TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight)
        ),
      ),
    );
  }
}

class GreenButtonWidget extends StatelessWidget {
  final String title;
  final Function onTap;

  const GreenButtonWidget({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BaseButtonWidget(
        title: title, hasBorder: false, onTap: onTap, color: AppColors.white);
  }
}

class WhiteButtonWidget extends StatelessWidget {
  final String title;
  final Function onTap;

  const WhiteButtonWidget({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BaseButtonWidget(
      title: title,
      hasBorder: true,
      onTap: onTap,
      color: AppColors.mainGreen,
      borderColor: AppColors.mainGreen,
      background: AppColors.white,

    );
  }
}

class GoogleButtonWidget extends StatelessWidget {
  final String title;
  final Function onTap;

  const GoogleButtonWidget({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BaseButtonWidget(
      title: title,
      hasBorder: true,
      onTap: onTap,
      alignment: MainAxisAlignment.center,
      color: AppColors.gray,
      background: AppColors.white,
      borderColor: Colors.black12,
      iconPath: 'assets/images/google.png',
    );
  }
}
