import 'package:bank_ui/data.dart';
import 'package:flutter/material.dart';
import 'cardDetails.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              "Your Selected Card",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            )),
        Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    decoration: BoxDecoration(
                      boxShadow: customShadow,
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Stack(
                      children: <Widget>[

                        Positioned.fill(
                            top: 150,
                            bottom: -150,
                            child: Container(
                                decoration: BoxDecoration(
                              boxShadow: customShadow,
                              shape: BoxShape.circle,
                              color: Colors.white38,
                            ),
                            ),
                        ),
                        Positioned.fill(
                            top: -100,
                            left: -300,
                            bottom: -100,
                            child: Container(
                                decoration: BoxDecoration(
                              boxShadow: customShadow,
                              shape: BoxShape.circle,
                              color: Colors.white24,
                            ),
                            ),
                        ),
                        CardDetails(),
                      ],
                    ),
                  );
                })),
      ],
    );
  }
}
