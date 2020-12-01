import 'package:flutter/material.dart';

//day 28-30
class DashBoard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade800,
               body:SingleChildScrollView(scrollDirection: Axis.vertical, padding: EdgeInsets.all(8.0),child: Column(children: <Widget> [
                    CircularProgressIndicator(backgroundColor: Colors.blue, value: 2, ),
          
          SizedBox(height: 50,),
          
                      Expanded(child: Column(children: [
          
          
          
                        Container(
          
                          height: 190, color: Colors.blue,
          
                          child: Column(children: [
          
                            ListTile()
          
                          ],),
          
                        )
          
                      ],),)
        ]),),
);
  }
}
