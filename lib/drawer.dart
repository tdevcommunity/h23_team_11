import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:togo_culture/constants.dart';

Widget myDrawer(){
   return Drawer(
       child: SingleChildScrollView(
           child:Container( 
               margin:EdgeInsets.only(top:50),
               child:Column(children: <Widget>[
                
                 ListTile( 
                    leading:Icon(Icons.home, color: maincolor,),
                    title:Text("Home"),
                    onTap:(){
                        // Home button action
                    }
                 ),

                 ListTile( 
                    leading:Icon(Icons.person,color: maincolor),
                    title:Text("Fetes traditionnelles"),
                    onTap:(){
                        // My Pfofile button action
                    }
                 ),

                 ListTile( 
                    leading:Icon(Icons.search, color: maincolor),
                    title:Text("Regions du Togo"),
                    onTap:(){
                        // Find peoples button action
                    }
                 ),ListTile( 
                    leading:Icon(Icons.person,color: maincolor),
                    title:Text("Evenements Historiques"),
                    onTap:(){
                        // My Pfofile button action
                    }
                 ),

                 ListTile( 
                    leading:Icon(Icons.search, color: maincolor),
                    title:Text("Sites Touristiques"),
                    onTap:(){
                        // Find peoples button action
                    }
                 ),ListTile( 
                    leading:Icon(Icons.person,color: maincolor),
                    title:Text("Arts et Musiques"),
                    onTap:(){
                        // My Pfofile button action
                    }
                 ),

                 ListTile( 
                    leading:Icon(Icons.search, color: maincolor),
                    title:Text("Cartes "),
                    onTap:(){
                        // Find peoples button action
                    }
                 )

                 //add more drawer menu here

            ],)
          )
       ),
   );
}