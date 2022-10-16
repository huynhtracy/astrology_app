import 'package:flutter/material.dart';
import 'horoscopes_screen.dart';

class SignWidget extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final IconData icon;
  final String imagePath;
  SignWidget(
    this.id,
    this.title,
    this.color,
    this.icon,
    this.imagePath,
  );

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(HoroscopesScreen.routeName, arguments: {
      'imagePath': imagePath,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            ),
            Spacer(),
            Center(
              child: Icon(
                icon,
                color: Colors.purple.shade300,
                size: 30,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.4),
              color.withOpacity(0.7),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
