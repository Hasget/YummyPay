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
    Path path_0 = Path();
    Paint paint = Paint();

    path_0.moveTo(0,0);
    path_0.lineTo(0,size.height*0.3041805);
    path_0.quadraticBezierTo(size.width*-0.0111583,size.height*0.7183831,size.width*0.1636667,size.height*0.6993217);
    path_0.cubicTo(size.width*0.2415083,size.height*0.6952796,size.width*0.5016417,size.height*0.5185077,size.width*0.5710250,size.height*0.4889812);
    path_0.cubicTo(size.width*0.9220917,size.height*0.3615310,size.width*0.7275250,size.height*0.8373892,size.width*0.8174750,size.height*0.9357281);
    path_0.quadraticBezierTo(size.width*0.8553167,size.height*0.9886628,size.width,size.height*0.9371677);
    path_0.quadraticBezierTo(size.width,size.height*0.2356727,size.width,0);


    paint.color = AppColors.mainGreen;
    canvas.drawPath(path_0, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}

// class RPSCustomPainter extends CustomPainter{
//
//   @override
//   void paint(Canvas canvas, Size size) {
//
//
//
//     Paint paint_0 = new Paint()
//       ..color = Color.fromARGB(255, 33, 150, 243)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 1;
//
//
//     Path path_0 = Path();
//     path.moveTo(0,0);
//     path.quadraticBezierTo(0,size.height*0.4142442,0,size.height*0.5523256);
//     path.cubicTo(size.width*0.0945833,size.height*0.6270764,size.width*0.4534917,size.height*0.3281146,size.width*0.6074917,size.height*0.4743632);
//     path.cubicTo(size.width*0.6988917,size.height*0.5802464,size.width*0.7099167,size.height*0.8234081,size.width*0.7235833,size.height*0.8600913);
//     path.cubicTo(size.width*0.7582167,size.height*0.9734911,size.width*0.7920583,size.height*0.9882752,size.width*0.8400000,size.height*0.9449889);
//     path.cubicTo(size.width*0.8825667,size.height*0.8962486,size.width*0.8844125,size.height*0.8928710,size.width*0.8992167,size.height*0.8754983);
//     path.cubicTo(size.width*0.9521833,size.height*0.8133998,size.width*0.9756250,size.height*0.8042635,size.width,size.height*0.8042635);
//     path.quadraticBezierTo(size.width*1.0166667,size.height*0.6319214,size.width,0);
//
//     canvas.drawPath(path_0, paint_0);
//
//
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
//
// }
