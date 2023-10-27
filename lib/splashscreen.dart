
import 'package:flutter/material.dart';
import 'package:togo_culture/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:togo_culture/onboard.dart';

import 'onboarding_bloc.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardingPage()),
      );
      // Naviguer vers l'écran principal après 3 secondes
      /*Navigator.pushReplacement(
        //context as BuildContext,
        //MaterialPageRoute(builder: (context) => const Home()),
        
      );*/
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Couleur d'arrière-plan
      body: Center(
        child: Image.asset('assets/logo-transparent.png'), // Chemin de l'image
      ),
    );
  }
}
