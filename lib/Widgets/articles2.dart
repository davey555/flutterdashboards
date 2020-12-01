import 'package:flutter/Material.dart';

class Articles2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String myText = """
Unlike network television premieres, Netflix, Disney Plus, and the rest of the streamers leave audiences in constant question of when their new shows actually arrive on the platform. According to Disney Plus sources, new episodes of The Mandalorian are expected to premiere on the service every Friday “shortly after” 12 a.m. PST.

THE MANDALORIAN SEASON 2 RELEASE SCHEDULE
Unlike season 1, which saw episodes popping up at random intervals, season 2 is taking a traditional structure on Fridays. Here are official dates listed by Disney Plus:

The Mandalorian season 2, episode 1: Oct. 30
The Mandalorian season 2, episode 2: Nov. 6
The Mandalorian season 2, episode 3: Nov. 13
The Mandalorian season 2, episode 4: Nov. 20
The Mandalorian season 2, episode 5: Nov. 27
The Mandalorian season 2, episode 6: Dec. 4
The Mandalorian season 2, episode 7: Dec. 11
The Mandalorian season 2, episode 8: Dec. 18
""";

    return Scaffold(
     
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
                height: 300,
                width: double.infinity,
                child: Image.asset('images/babyyoda.jpg')),
            Positioned(
              top: 180,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  Icon(Icons.slideshow, color: Colors.white),
                  Text('Fashion',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ))
                ],
              ),
            ),
            Container(
               margin: EdgeInsets.fromLTRB(16, 220, 16, 16),
decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:Colors.white,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row( 
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
            Text('October 29 2020'),
            IconButton(icon: Icon(Icons.share), onPressed: () {}),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text('Mandalorian Season 2',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            )),
                      Divider(thickness: 2,),
                      Row(
                        children: [
            Row(children: [
              IconButton(
                  icon: Icon(Icons.message), onPressed: () {}),
              Text('200k'),
            ]),
            Row(
              children: [
                IconButton(
                    icon: Icon(Icons.post_add), onPressed: () {}),
                Text('2k'),
              ],
            ),
            SizedBox(height: 10),

           
                        ],
                      ),
                      Text(
                        myText,
                        style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.normal,
            wordSpacing: 3,
                        ),
                      ),
                    ],
                  ),
                  
                ),
       
          ],
        ),
      ),
    );


  }
}
