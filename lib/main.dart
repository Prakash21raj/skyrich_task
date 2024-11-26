import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/about_section.dart';
import 'package:flutter_task/widgets/featured_items.dart';
import 'package:flutter_task/widgets/footer.dart';
import 'package:flutter_task/widgets/hero_section.dart';
import 'package:flutter_task/widgets/menu_section.dart';
import 'package:flutter_task/widgets/testimonial_section.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ReservationModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Homepage',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Poppins',
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ReservationModel extends ChangeNotifier {
  bool isReserved = false;

  void toggleReservation() {
    isReserved = !isReserved;
    notifyListeners();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text('SKYRICH RESTAURANT ',style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(),
            AboutSection(),
            const MenuSection(),
            const FeaturedItems(),
            TestimonialsSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
