import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_app/components/botton.dart';
import 'package:sushi_restaurant_app/theme/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 25),

            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset("assets/images/sushi.png"),
            ),
            SizedBox(height: 10),
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),

            Text(
              "Feel the taste of most popular japan food from anywhere and anytime",
              style: GoogleFonts.dmSerifDisplay(
                height: 2,
                color: Colors.grey[300],
              ),
            ),
            SizedBox(height: 25),
            MyBotton(text: "Get Started",onTap: (){
              Navigator.pushNamed(context, "/menupage");
            },),
          ],
        ),
      ),
    );
  }
}
