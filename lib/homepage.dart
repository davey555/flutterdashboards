//DAY 24-27
//HOME PAGE CLASS
import 'package:flutter/material.dart';
import 'package:profiles/screens/bloghome.dart';
import 'package:profiles/screens/screeens.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int current = 0;

  final tabs = <Widget>[
   
 BlogPage(),
   SportsFeed(),
    DashBoard1(), 
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
            
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              'Ublog',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
                icon: Icon(Icons.category_outlined),
                onPressed: () {},
                color: Colors.black),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                    color: Colors.black),
              )
            ],
          ),
            body: tabs[current],
      backgroundColor: Color(0xffF3F3F3),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: current,
        backgroundColor: Color(0xffF3F3F3),
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey.shade700,
        elevation: 3,
        onTap: (index) {
          setState(() {
            current = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOTEL',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book_online,
            ),
            label: 'BLOG',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.hotel,
            ),
            label: 'TRAVEL',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.book),
          //   label: 'BOOK',
          // ),
        ],
      ),
    );
  }
}

class SportsFeed extends StatefulWidget {
  @override

  SportsFeedState createState() => SportsFeedState();

  }

  class SportsFeedState extends State<SportsFeed>{

    @override

    Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(16), children: <Widget>[
      ToggleButtons(
        color: Colors.grey.shade800,
        selectedColor: Colors.white,
        fillColor: Colors.amber,
        renderBorder: true,
        borderRadius: BorderRadius.circular(10),
        borderColor: Colors.grey,
        selectedBorderColor: Colors.grey.shade700,
        highlightColor: Colors.white,
        splashColor: Colors.amber,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(16, 16, 32, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.sports_soccer),
                const SizedBox(
                  height: 16,
                ),
                Text('Football',
                    style: TextStyle(fontSize: 16, color: Colors.white)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(16, 16, 32, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.sports_hockey),
                const SizedBox(
                  height: 16,
                ),
                Text('Hockey',
                    style:
                        TextStyle(fontSize: 16, color: Colors.grey.shade800)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(16, 16, 32, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.sports_baseball),
                const SizedBox(
                  height: 16,
                ),
                Text('Baseball',
                    style:
                        TextStyle(fontSize: 16, color: Colors.grey.shade800)),
              ],
            ),
          ),
        ],
        disabledColor: Colors.blue,
        isSelected: [true, false, false],
        onPressed: (index) {
          debugPrint('hi');
        },
      ),
      Container(
        height: 150,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          clipBehavior: Clip.antiAlias,
          elevation: 4,
          margin: EdgeInsets.symmetric(vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  child: Container(),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.2, 0.4, 0.8],
                        colors: [Colors.green, Colors.white, Colors.red]),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Italy',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '1',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  top: 5,
                  right: 10,
                ),
                child: Text(
                  ":",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Nigeria',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '2',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  child: Container(),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.2, 0.4, 0.8],
                        colors: [Colors.green, Colors.white, Colors.green]),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return Material(
              child: SafeArea(
                child: Container(
                  child: Container(
                      height: 300,
                      color: Colors.amber,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                          ),
                          Text(
                            'Top 5\nFIFA MOMENTS',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            );
          }));
        },
        autofocus: true,
        splashColor: Colors.orange,
        borderRadius: BorderRadius.circular(10),
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
              height: 300,
              color: Colors.amber,
              child: Text(
                'Top 5\nFIFA MOMENTS',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                ),
              )),
        ),
      ),
      Divider(
        thickness: 2,
      ),
      ListTile(
        title: Text(
          'Nigeria Defeats \none of the top Countries in the world',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          ' Yesterday, 13:22 | Japan',
          style: TextStyle(fontSize: 20, color: Colors.grey.shade800),
        ),
        hoverColor: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        tileColor: Colors.white,
        trailing: Text(
          'Football',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      SizedBox(height: 10),
      Divider(
        thickness: 2,
      ),
      ListTile(
        title: Text(
          'Fifa increases drug test on players',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          ' Yesterday, 10:12 am | Japan',
          style: TextStyle(fontSize: 20, color: Colors.grey.shade800),
        ),
        hoverColor: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        tileColor: Colors.white,
        trailing: Text(
          'Football',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      SizedBox(height: 10),
      Divider(
        thickness: 2,
      ),
      ListTile(
        title: Text(
          'Englad Top 11 Players for Fifa',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          ' Yesterday, 9:20 | Japan',
          style: TextStyle(fontSize: 20, color: Colors.grey.shade800),
        ),
        hoverColor: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        tileColor: Colors.white,
        trailing: Text(
          'Football',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ]);
  }

  }
