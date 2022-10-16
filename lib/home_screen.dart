import 'package:astrology_app/sign_widget.dart';
import 'package:flutter/material.dart';
import 'dummy_data.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Astrology App'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  'Daily Horoscopes',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
            SizedBox(
              height: 600,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 2 / 1,
                padding: const EdgeInsets.all(20),
                children: DUMMY_SIGNS
                    .map((catData) => SignWidget(
                          catData.id,
                          catData.title,
                          catData.color,
                          catData.icon,
                          catData.imagePath,
                        ))
                    .toList(),
              ),
            ),
          ],
        ));
  }
}
