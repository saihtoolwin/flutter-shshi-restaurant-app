import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sushi_restaurant_app/components/botton.dart';
import 'package:sushi_restaurant_app/components/food_tile.dart';
// import 'package:sushi_restaurant_app/models/food.dart';
import 'package:sushi_restaurant_app/models/shop.dart';
import 'package:sushi_restaurant_app/pages/food_details_page.dart';
import 'package:sushi_restaurant_app/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  
  
  void navigateToFoodDetails(int index){
    final shop = context.read<Shop>();
    final foodMenu=shop.foodMenu;
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return FoodDetailsPage(food: foodMenu[index]);
    }));
  }

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final foodMenu=shop.foodMenu;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      foregroundColor: Colors.grey[800],

        leading: Icon(Icons.menu, color: Colors.grey[900]),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/cartpage');
          }, icon: Icon(Icons.shopping_cart))
        ],
      ),
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(7),
            ),
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Get 32% Promo",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    MyBotton(text: "Redeem", onTap: () {}),
                  ],
                ),
                Image.asset("assets/images/sushi (2).png", height: 130),
              ],
            ),
          ),
          SizedBox(height: 25),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 25),
            child: TextField(
              autofocus: false,

              decoration: InputDecoration(
                hintText: "Search here ....",
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: primaryColor),
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: primaryColor),
                ),
              ),
            ),
          ),

          SizedBox(height: 25),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 25),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryColor,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(food: foodMenu[index],onTap: (){
                navigateToFoodDetails(index);
              },),
            ),
          ),
          SizedBox(height: 25),

          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: EdgeInsets.all(20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Row(
                  children: [
                    Image.asset('assets/images/roll.png', height: 60),

                    SizedBox(width: 20),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "Sushi Egg",
                          style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '\$21.00',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ],
                ),

                Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.grey,
                  size: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
