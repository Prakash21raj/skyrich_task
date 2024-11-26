import 'package:flutter/material.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    // List of different images for each menu item
    final List<String> menuImages = [
      'assets/biriyani.jpeg',
      'assets/menu_item.jpeg',
      'assets/grill.jpeg',
      'assets/pizza.jpeg',
      'assets/pasta.jpeg',
      'assets/momo.jpeg',
      
    ];
    List<String> foodName =[
      "Biriyani",
      "Burger",
      "Grill chicken",
      "Pizza",
      "Pasta",
      "Momos"
    ];
    List<String> price=[
      '250',
      '199',
      '499',
      '599',
      '299',
      '345'
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Our Menu', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 20),
            // Use GridView.builder for displaying menu items
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2, // Adjust for responsiveness
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
              itemCount: menuImages.length, // Use the length of the list
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.grey[200],
                  elevation: 4,
                  child: Column(
                    children: [
                      Image.asset(
                        height: 100,
                        width: 100,
                        menuImages[index], // Use dynamic image paths from the list
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Text(foodName[index], style: const TextStyle(fontSize: 18)),
                      ),
                       Text(' Rs ${price[index]}' , style: TextStyle(fontSize: 16)),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
