
import 'package:bank_ui/data.dart';
import 'package:flutter/material.dart';
import "PieChart.dart";

class ExpenseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment:CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin:EdgeInsets.symmetric(vertical:0.0,horizontal:20),
              child: Text("Monthly Expenses",
              style: TextStyle(
              fontSize: 20,
              fontWeight:FontWeight.bold,
    ),
              ),
            ),
            SizedBox(width:50,),
            Container(               // square box
              child: Icon(Icons.chevron_left),
            height: 40,
              width: 60,
              decoration: BoxDecoration(
                color: primaryColor,
                boxShadow: customShadow,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            SizedBox(width:10,),
            Container( // square box
              child: Icon(Icons.chevron_right),
              height: 40,
              width: 60,
              decoration: BoxDecoration(
                color: primaryColor,
                boxShadow: customShadow,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ],
        ),
        Row(
        children: <Widget>[
          Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal:20,vertical:40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: category
                      .map((value) => Padding(
                        padding: const EdgeInsets.all(0.5),
                        child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 5.0,
                                  backgroundColor:
                                      pieColors[category.indexOf(value)],
                                ),
                                SizedBox(width: 10),
                                Text(value['name'],
                                  style: TextStyle(fontSize:18,
                                  ),)
                              ],
                            ),
                      ),

                  ).toList(), //map
                ),
              )),
          Expanded(
              flex:5,
              child: PieChart(),),
        ],
      ),
    ],
    );
  }
}
