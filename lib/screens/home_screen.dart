import 'package:duroos_app/screens/play_video/play_video1.dart';
import 'package:duroos_app/screens/play_video/play_video2.dart';
import 'package:duroos_app/screens/play_video/play_video3.dart';
import 'package:duroos_app/screens/play_video/play_video4.dart';
import 'package:duroos_app/screens/play_video/play_video5.dart';
import 'package:duroos_app/screens/play_video/play_video6.dart';
import 'package:duroos_app/screens/play_video/play_video7.dart';
import 'package:duroos_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.indigo[500],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Center(child: Text("فضيلةالشيخ محمد سيد حاج رحمه الله")),
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/image1.jpg'),
              radius: screenHeight * 0.12,
            ),
            SizedBox(height: screenHeight * 0.02),
            Card(
              child: ListTile(
                title: Text("الأم"),
                subtitle: Text("محمد سيد حاج رحمه الله تعالى"),
                trailing: Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayVideo1(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.001),
            Card(
              child: ListTile(
                title: Text("المسيح الدجال"),
                subtitle: Text("محمد سيد حاج رحمه الله تعالى"),
                trailing: Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayVideo2(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.001),
            Card(
              child: ListTile(
                title: Text("اريد ان أستقيم .. ولكن"),
                subtitle: Text("محمد سيد حاج رحمه الله تعالى"),
                trailing: Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayVideo3(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.001),
            Card(
              child: ListTile(
                title: Text("الزواج 1"),
                subtitle: Text("محمد سيد حاج رحمه الله تعالى"),
                trailing: Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayVideo4(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.001),
            Card(
              child: ListTile(
                title: Text("الزواج 2"),
                subtitle: Text("محمد سيد حاج رحمه الله تعالى"),
                trailing: Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayVideo5(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.001),
            Card(
              child: ListTile(
                title: Text("مصيبة أهل السودان"),
                subtitle: Text("محمد سيد حاج رحمه الله تعالى"),
                trailing: Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayVideo6(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.001),
            Card(
              child: ListTile(
                title: Text("المخدرات"),
                subtitle: Text("محمد سيد حاج رحمه الله تعالى"),
                trailing: Icon(Icons.play_arrow),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayVideo7(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
