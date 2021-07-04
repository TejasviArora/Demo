import 'dart:math';

import 'package:flutter/material.dart';
import 'data.dart';


class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:12.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow:customShadow,
          color: primaryColor,
        ),
        child: Stack(
          children:<Widget>[
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: CustomPaint(
                foregroundPainter: PieChartPainter(),
                child:Container(),
              ),
            ),
          Center(
            child: Container(
              child: Center(child: Text(" ₹ 1956 ", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold))),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow:customShadow,
              color: primaryColor,
            ),),
          )
          ],
        ),
      ),
    );
  }
}
 class PieChartPainter extends CustomPainter {
   @override
   void paint(Canvas canvas, Size size) {
     Offset center = Offset(size.width / 2, size.height / 2);
     double radius = min(size.width / 2, size.height / 2);

     var paint = new Paint()
       ..style = PaintingStyle.stroke
       ..strokeWidth = 40;

     double total = 0;
     category.forEach((element) {
       total += element['amount'];
     });
     var startRadian = -pi / 2;
     for (int i = 0; i < category.length; i++) {
       var currentExpense = category[i];
       var sweepRadian = (currentExpense['amount'] / total) * 2 * pi;
       paint.color = pieColors[i];
       canvas.drawArc(
           Rect.fromCircle(center: center, radius: radius), startRadian,
           sweepRadian, false, paint);
       startRadian += sweepRadian;
     }
   }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
 }