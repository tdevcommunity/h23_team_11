import 'package:flutter/material.dart';

import 'appbar.dart';
import 'constants.dart';

class Togo extends StatelessWidget {
  const Togo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/drapeau.jpg', width: 150,),
                  Image.asset('assets/armoirie.png', width: 150,),
                ],
              ),
            ),
            
            const Padding(
              padding:   EdgeInsets.only(left:10.0,right: 10.0),
              child: Text(
                'Le Togo, encore appelé la République togolaise, est un pays d’Afrique de l\'Ouest, dont la population est estimée en 2022 à environ 8,095 millions  d’habitants pour une densité de 152 /km2. Le Togo tire son nom de l\'actuel Togoville.',
                style: TextStyle(fontSize: 17),
              ),
            ),
            const SizedBox(height: 20),
            Image.asset('assets/togo.png', width: 300,),
            const Padding(
              padding:   EdgeInsets.only(left:10.0,right: 10.0),
              child: Text(
                'Le Togo est un pays d\'Afrique de l\'Ouest situé dans le golfe de Guinée. Il est connu pour ses plages bordées de palmiers et ses villages au sommet des collines. La région du Koutammakou est habitée par le peuple des Batammariba, occupant des huttes en argile traditionnelles ressemblant à des forteresses qui remontent au XVIIe siècle. La capitale Lomé est dotée d\'un bazar sur plusieurs étages appelé Grand Marché ainsi que du Marché aux fétiches qui propose des remèdes et des talismans traditionnels en rapport avec le culte vaudou',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}