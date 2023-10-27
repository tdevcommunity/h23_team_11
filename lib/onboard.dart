import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

class OnboardingScreen {
  final String title;
  final String description;
  final String image;

  OnboardingScreen({required this.title, required this.description, required this.image});
}

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingState(currentIndex: 0, screens: onboardingScreens));

  @override
  Stream<OnboardingState> mapEventToState(OnboardingEvent event) async* {
    if (event is ShowNextOnboarding) {
      if (state.currentIndex < onboardingScreens.length - 1) {
        yield state.copyWith(currentIndex: state.currentIndex + 1);
      }else {
        yield state; // Lorsque les écrans d'onboarding sont terminés
        add(OnboardingCompleted()); // Émettre un événement pour indiquer la fin
      }
    }
  }
}
// Événement pour déclencher l'affichage de l'écran suivant

// Événement pour déclencher l'affichage de l'écran suivant
class OnboardingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ShowNextOnboarding extends OnboardingEvent {}
class OnboardingCompleted extends OnboardingEvent {}
// État pour gérer l'affichage des écrans d'onboarding
class OnboardingState extends Equatable {
  final int currentIndex; // Index de l'écran actuel
  final List<OnboardingScreen> screens; // Liste des écrans d'onboarding

  OnboardingState({
    required this.currentIndex,
    required this.screens,
  });

  OnboardingState copyWith({int? currentIndex, List<OnboardingScreen>? screens}) {
    return OnboardingState(
      currentIndex: currentIndex ?? this.currentIndex,
      screens: screens ?? this.screens,
    );
  }

  @override
  List<Object?> get props => [currentIndex, screens];
}


List<OnboardingScreen> onboardingScreens = [
  OnboardingScreen(
    title: 'Decouvrez la culture togolaise dans sa diversité',
    description: 'Les fetes traditionnelles , l\'art, la musique',
    image: 'assets/logo-transparent.png', // Chemin vers l'image
  ),
  OnboardingScreen(
    title: 'Explorez l\'histoire du Togo',
    description: 'Vous en apprendrez plus sur les evenements marquants de l\'histoire du Togo',
    image: 'assets/logo-transparent.png', // Chemin vers l'image
  ),
  OnboardingScreen(
    title: 'Lisez des articles informatifs',
    description: 'Apprenez-en plus sur les villes, les fêtes traditionnelles et bien plus encore.',
    image: 'assets/logo-transparent.png', // Chemin vers l'image
  ),
];


