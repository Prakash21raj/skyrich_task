import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About Us', style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: 10),
          Text(
            'Our restaurant offers the best dining experience with fresh and organic ingredients. Come enjoy the finest meals prepared by expert chefs!',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
