import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_restaurant_app/models/shop.dart';
import 'package:sushi_restaurant_app/pages/cart_page.dart';
import 'package:sushi_restaurant_app/pages/intro_page.dart';
import 'package:sushi_restaurant_app/pages/menu_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context)=> Shop(),
  child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const IntroPage(),
      routes: {
        '/intropage' : (context) => IntroPage(),
        '/menupage' : (context) => MenuPage(),
        '/cartpage' : (context) => CartPage(),
      },
    );
  }
}