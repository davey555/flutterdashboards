import 'package:flutter/Material.dart';

class Articles1 extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    String myText = """
Here are 300 most amazing games ever played in 20 years.
this games combines from the likes of Packman, supermario,gta5, fifa 20, devil may cry
and so many other amazing games ever played, you can make your selection of top 10 you have played
The greatest game of all time? It probably was back when it came out, but is likely here more because of its influence than its staying power. I remember as a kid playing it and struggling to figure out where all the hidden places were, just cutting down every tree and throwing bombs at every wall. It's amazing to consider how deep this game is when most NES titles were more like Bad Dudes.

2. Super Mario Bros.
I'm ashamed to say I didn't actually finish this game until the Super Mario All-Stars version, where you can save your progress, but I still liked it a lot. I struggled to find the self-restraint to avoid warping and play through every level, but man is it hard when you know where they're at.


3. Tetris
I probably wouldn't sit down and play Tetris today, but back when I first got my Game Boy in around 1990 I couldn't get enough of it. One of my proudest ever gaming moments was completing it on the fastest speed with the highest level of preformed blocks, and saw the whole orchestra and rocket blasting off.


4. Grand Theft Auto III
I'd fallen out of gaming a bit during the PS2 era, but I did manage to pick this one up. I was a fan of the first GTA on the PC, but never would have expected the series to get this good. This was the game I'd been dreaming of when I was a kid playing NES: a game that combines all different kinds of gameplay into one huge narrative.


5. Half-Life 2
Haven't played it.


6. Doom
When I got my first PC I mostly played Shareware games, and I remember playing the hell out of the first level of Doom. I think it ended up being one of the first PC games I actually purchased. I briefly considered making my own levels but almost immediately realized I was not capable of it.


7. Metroid
Though I love many of Metroid's descendants (like Super Metroid, Dust, Shadow Complex, Symphony of the Night) I ended up losing patience with the original. If I'd played it when it was new, I'm sure I would have gotten months of enjoyment from it, but playing it now, after playing many of its successors, it's more of a chore than a good time.
""";

    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                      height: 300,
                      width: double.infinity,
                      child: Image.asset('images/greatgames.jpg')),
                  Positioned(
                    bottom: 50,
                    left: 20,
                    right: 20,
                    child: Row(
                      children: [
                        Icon(Icons.slideshow, color: Colors.white),
                        Text('Games',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ))
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(child: Text('October 29 2020')),
                        IconButton(icon: Icon(Icons.share), onPressed: () {}),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text('300 Most Amazing Games',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        )),
                    Divider(),
                    Row(
                      children: [
                        Row(children: [
                          IconButton(
                              icon: Icon(Icons.message), onPressed: () {}),
                          Text('20.2k'),
                        ]),
                        Row(
                          children: [
                            IconButton(
                                icon: Icon(Icons.post_add), onPressed: () {}),
                            Text('20.2k'),
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
                        wordSpacing: 2,
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class Articles2 extends Articles1 {

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView();
//   }
// }
