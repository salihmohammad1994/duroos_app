import 'dart:io';

import 'package:duroos_app/screens/about_us.dart';
import 'package:duroos_app/screens/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomDrawer extends StatefulWidget {
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 50,
        ),
        child: Container(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.menu),
                trailing: Text("قائمة التشغيل"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                trailing: Text("حــول"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutUs(),
                      ));
                },
              ),
              ListTile(
                leading: Icon(Icons.stars),
                trailing: Text("تقييم التطبيق"),
                onTap: () {
                  showRating();
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                trailing: Text("الخروج من التطبيق"),
                onTap: () {
                  showExitDialog();
                },
              ),
            ],
          ),
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

  Future<bool> showExitDialog() async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("الخروج من التطبيق"),
        content: const Text("أنت على وشك الخروج من التطبيق .. استمرار ؟"),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: Text("لا"),
          ),
          ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: Text("نعم"),
          ),
        ],
      ),
    );
  }
}
