import 'package:flutter/material.dart';

class FeaturedItems extends StatelessWidget {
  const FeaturedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Featured Items', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 10),
          // Ensure the images scroll horizontally within a SingleChildScrollView
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // Static images inside the row
                Image.asset('assets/pizza.jpeg', width: 150, height: 150, fit: BoxFit.cover),
                const SizedBox(width: 16),
                Image.asset('assets/grill.jpeg', width: 150, height: 150, fit: BoxFit.cover),
                const SizedBox(width: 16),
                Image.asset('assets/biriyani.jpeg', width: 150, height: 150, fit: BoxFit.cover),
                const SizedBox(width: 16),
                Image.asset('assets/biriyani.jpeg', width: 150, height: 150, fit: BoxFit.cover),
                const SizedBox(width: 16),
                Image.asset('assets/pizza.jpeg', width: 150, height: 150, fit: BoxFit.cover),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
