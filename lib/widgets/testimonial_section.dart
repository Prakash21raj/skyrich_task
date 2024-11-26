import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TestimonialsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Customer Testimonials', style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: 20),
          AnimatedTextKit(
            animatedTexts: [
              FadeAnimatedText('The best dining experience I have had!'),
              FadeAnimatedText('Amazing food and great service. Highly recommend!'),
              FadeAnimatedText('A memorable night with delicious food.'),
            ],
            repeatForever: true,
            pause: Duration(milliseconds: 500),
          ),
        ],
      ),
    );
  }
}
