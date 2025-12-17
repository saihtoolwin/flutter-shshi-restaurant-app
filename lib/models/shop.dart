import 'package:flutter/widgets.dart';
import 'package:sushi_restaurant_app/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: "Sushi Deluxe",
      price: "12.99",
      imagePath: "assets/images/sushi_deluxe.png",
      rating: "4.8",
    ),
    Food(
      name: "Ramen Special",
      price: "8.50",
      imagePath: "assets/images/ramen.png",
      rating: "4.6",
    ),
    Food(
      name: "Tempura Box",
      price: "10.00",
      imagePath: "assets/images/tempura.png",
      rating: "4.7",
    ),
    Food(
      name: "Salmon Sushi",
      price: "5.00",
      imagePath: "assets/images/sushi (1).png",
      rating: "4.9",
    ),
  ];

  List<Food> _cart = [];

  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  void addToCart(Food foodItem, int quantity) {
    for (var i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food foodItem) {
    _cart.remove(foodItem);
    notifyListeners();
  }
}
