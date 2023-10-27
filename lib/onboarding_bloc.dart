import 'package:flutter/material.dart';
import 'package:togo_culture/home.dart';

import 'onboard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        if (state.currentIndex >= state.screens.length) {
          // Les écrans d'onboarding sont terminés, naviguez vers la page d'accueil
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => Home()));
        }
      },
      child: Scaffold(
          body: Padding(padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 200,),
              BlocBuilder<OnboardingBloc, OnboardingState>(
                builder: (context, state) {
                  return Expanded(
                
                child: PageView.builder(
                  itemCount: state.screens.length,
                  controller: PageController(initialPage: state.currentIndex),
                  itemBuilder: (context, index) {
                    final screen = state.screens[index];
                    return Center(
                      child: Column(
                        children: [
                          
                          Image.asset(screen.image),
                          Center(child: Text(screen.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                          const SizedBox(height: 20,),
                          Center(child: Text(screen.description, style:const TextStyle(fontSize: 17))),
                        ],
                      ),
                    );
                  },
                ),
              );}),
              TextButton.icon(
  onPressed: () {
    
    // Code à exécuter lorsque le bouton est pressé
  },
  icon: Icon(Icons.arrow_forward), // Remplacez 'android' par l'icône souhaitée
  label: Text('Swippez'),
),
              ElevatedButton(
                onPressed: () {
                  //context.read<OnboardingBloc>().add(ShowNextOnboarding());
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> Home()));
                },
                style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 122, 37, 6), // Couleur de fond (café)
              ),
                // Icône à afficher à gauche du texte
                child: const Text('Passer', style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        )
        )
      
    );
  }
}
