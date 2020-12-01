import 'package:flutter/material.dart';

//day 27
class DashBoard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
              body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  child: Column(
                    children: [
                      Text('+500', style: TextStyle(color: Colors.white)),
                      SizedBox(height: 5),
                      Text('LEADS'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  child: Column(
                    children: [
                      Text('+300', style: TextStyle(color: Colors.white)),
                      SizedBox(height: 5),
                      Text('CUSTOMER'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  child: Column(
                    children: [
                      Text('+1200', style: TextStyle(color: Colors.white)),
                      Text('ORDERS'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            AspectRatio(
              aspectRatio: 3 / 2,
              child: Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black54, offset: Offset(-10, 10))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text('Sales',
                            style: TextStyle(
                              fontSize: 40,
                            ))),
                    Center(
                        child: FlutterLogo(
                            size: 300, style: FlutterLogoStyle.stacked))
                  ],
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 1 / 32,
              child: Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black54, offset: Offset(-10, 10))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: GridView.count(
                  crossAxisCount: 3,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.list_alt_rounded),
                          onPressed: () {},
                          iconSize: 40,
                        ),
                        Text('Results',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.message),
                          onPressed: () {},
                          iconSize: 40,
                        ),
                        Text('Messages',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.calendar_today),
                          onPressed: () {},
                          iconSize: 40,
                        ),
                        Text('Appointment',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.video_call),
                          onPressed: () {},
                          iconSize: 40,
                        ),
                        Text('VideoMeet',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.money),
                          onPressed: () {},
                          iconSize: 40,
                        ),
                        Text('Finances',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.attach_money),
                          onPressed: () {},
                          iconSize: 40,
                        ),
                        Text('Billing',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
