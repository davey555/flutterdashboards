import 'package:flutter/Material.dart';

class MyAppBar extends AppBar {
  final Text title;


  MyAppBar(
    
    this.title,

  );
  createAppBar() {
    return AppBar( backgroundColor:Colors.white,
    title: title,
        elevation: 0,
        leadingWidth: 120,
        automaticallyImplyLeading: false,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: title, 
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.orange.shade400),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                ),
                iconSize: 30,
                onPressed: () {},
              ),
            ),
          )
        ],);
  }
}
