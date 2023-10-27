import 'package:flutter/material.dart';

import 'constants.dart';


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
     return AppBar(
        iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: maincolor,
      //background color of Appbar to green
      title: Text("Togo Culture", style: TextStyle(color: Colors.white),),
      actions: <Widget>[
          IconButton( 
             icon: Icon(Icons.person,color: Colors.white),
             onPressed: (){
                 //action for user icon button
             },
          )
      ]
  );
  }
}