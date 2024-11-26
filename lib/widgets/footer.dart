import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(icon: Icon(Icons.facebook), onPressed: () {}),
              IconButton(icon: Icon(Icons.whatshot_rounded), onPressed: () {}),
              IconButton(icon: Icon(Icons.brightness_low_outlined), onPressed: () {}),
            ],
          ),
          SizedBox(height: 10),
          Text('© 2024 Restaurant Name. All rights reserved.')
        ],
      ),
    );
  }
}
