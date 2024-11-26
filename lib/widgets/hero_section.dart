import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/restaurant_hero.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 20,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Reserve a Table'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              textStyle: TextStyle(fontSize: 18),
            ),
          ).animate().fadeIn(duration: 1.seconds).move(delay: 1.seconds, duration: 1.seconds, curve: Curves.easeInOut),
        ),
      ],
    );
  }
}
