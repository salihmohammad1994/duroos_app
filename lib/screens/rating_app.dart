/*

import 'package:duroos_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingApp extends StatefulWidget {
  const RatingApp({super.key});

  @override
  State<RatingApp> createState() => _RatingAppState();
}

class _RatingAppState extends State<RatingApp> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*
            Text(
              "Rating : ${rating}",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            SizedBox(height: 32),
            */ //    buildRating(),
            SizedBox(height: 32),
            TextButton(
              child: Text(
                "يرجى تقييم التطبيق من هنا",
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
              onPressed: () => showRating(),
            )
          ],
        ),
      ),
    );
  }

  Widget buildRating() => RatingBar.builder(
        initialRating: rating,
        minRating: 1,
        itemSize: 46,
        itemPadding: EdgeInsets.symmetric(horizontal: 4),
        itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
        updateOnDrag: true,
        onRatingUpdate: (rating) => setState(() {
          this.rating = rating;
        }),
      );

  void showRating() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("تقييم التطبيق"),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "من فضلك .. اترك تقييمك هنا",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 32),
              buildRating(),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text(
                "حسناً",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      );
}
*/
