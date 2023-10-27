import 'package:flutter/material.dart';
import 'package:togo_culture/togo.dart';

import 'appbar.dart';
import 'constants.dart';
import 'drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
  ),
   drawer: myDrawer(),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/logo-transparent.png', width: 300,),
            const Padding(
              padding:   EdgeInsets.all(16.0),
              child: Text(
                'L\'application TogoCulture vise à créer un espace numérique interactif pour célébrer et documenter l\'histoire riche et la culture vibrante du Togo. Elle servira de plateforme éducative et informative pour les résidents locaux ainsi que pour les touristes souhaitant explorer la diversité culturelle togolaise.',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
Navigator.push(context, MaterialPageRoute(builder:(context)=> const Togo()));              },
              child: const Text('Connaitre le Togo'),
            ),
          ],
        ),
      ),
    );
  }
}

