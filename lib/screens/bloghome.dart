import 'package:flutter/material.dart';
import '../Widgets/widgetsexport.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Theme(
        data: ThemeData(
          primaryColor: Colors.orange,
        ),
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 50,
            bottom: TabBar(
              tabs: [
                Padding(
                    child: Text('Tech',
                        style: TextStyle(fontSize: 23, color: Colors.black)),
                    padding: EdgeInsets.all(8.0)),
                Padding(
                    child: Text('Games',
                        style: TextStyle(fontSize: 23, color: Colors.black)),
                    padding: EdgeInsets.all(8.0)),
                Padding(
                    child: Text('Series',
                        style: TextStyle(fontSize: 23, color: Colors.black)),
                    padding: EdgeInsets.all(8.0)),
                Padding(
                    child: Text('Art',
                        style: TextStyle(fontSize: 23, color: Colors.black)),
                    padding: EdgeInsets.all(8.0)),
                Padding(
                    child: Text('Fashion',
                        style: TextStyle(fontSize: 23, color: Colors.black)),
                    padding: EdgeInsets.all(8.0)),
              ],
              isScrollable: true,
              indicatorColor: Colors.amber,
              unselectedLabelColor: Colors.amber,
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Blog(),
          backgroundColor: Color(0xffF3F3F3),
        ),
      ),
    );
  }
}

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  List<Map> mydata = [
    {
      "name": "Unicorn Company found in Nigeria",
      "program": "IInvent",
      "degree":
          "a company that rised from the covid19 period has made its shine in the tech industry.",
    },
    {
      "name": "Best Tech Companies in India ",
      "program": "FlipKart Overview",
      "degree":
          "one of the Naspers Investment still making its shine in the year 2023",
    },
    {
      "name": "TechCrunch Disrupt 2023 ",
      "program": "Milestones",
      "degree":
          "best robotics companies showcase their amazing work in the recent tech crunch disrupt 2023",
    },
    {
      "name": "BlockChain 101 ",
      "program": "A road to the future",
      "degree":
          "blockchain has become the next big internet, currency over valued that dollars ",
    },
    {
      "name": "Self Driving Planes ",
      "program": "Mission 47",
      "degree": "masters",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        ListView.separated(
          itemCount: mydata.length,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(8.0),
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, index) => SizedBox(height: 10),
          itemBuilder: (context, index) {
            return _buildMyItems(index);
          },
        ),
        Articles1(),
  
        //TODO: ADD THE ARTICLES HERE
       Articles2(),
        Articles3(),
        Articles4(),
      ],
    );
  }

  Widget _buildMyItems(index) {
    Map myydata = mydata[index];
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                Container(
                  height: 100,
                  color: Colors.blue,
                  width: 100,
                  child: FlutterLogo(),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        myydata['name'],
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      Text.rich(TextSpan(children: [
                        WidgetSpan(
                            child: CircleAvatar(
                          maxRadius: 12,
                          backgroundColor: Colors.greenAccent,
                        )),
                        WidgetSpan(child: SizedBox(width: 5)),
                        TextSpan(
                            text: myydata['program'],
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            )),
                        WidgetSpan(child: SizedBox(width: 5)),
                        TextSpan(
                            text: myydata['masters'],
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ))
                      ]))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
