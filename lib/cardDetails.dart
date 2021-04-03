import 'package:bank_ui/data.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 250,
              child: Image.asset("assets/mastercardlogo.png"),
            ),
        ),
        Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container( // square box
                  height: 60,
                  width: 70,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    boxShadow: customShadow,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
              ),
            ),
        ),
        Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom:10,left: 20,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        ' **** ****  **** ',
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '1945',
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                    SizedBox(
                      height:5.0,
                    ),
                    Text('PREMIUM CARD', style: TextStyle(
                    fontSize:20,
                    fontWeight:FontWeight.bold,
                    ),
                    )
                ],
              ),
            ))
      ],
    );
  }
}
