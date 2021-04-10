import 'package:flutter/material.dart';
import 'package:flutter_app/shared/AppColors.dart';

class WaveWidget extends StatelessWidget {
  final double height;
  final double width;

  const WaveWidget({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        height: height,
        width: width,
      ),
      painter: WavePainter(),
    );
  }

}

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.lineTo(0, size.height) ;
    path.quadraticBezierTo(size.width/4, size.height-40, size.width/2, size.height-20) ;
    path.quadraticBezierTo(3/4 * size.width, size.height, size.width, size.height-20) ;
    path.lineTo(size.width, 0);
    path.close();

    paint.color = AppColors.mainGreen;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}