import 'package:astrology_app/dummy_data.dart';
import 'package:flutter/material.dart';
import 'dart:math';

//github
//new feature - switch to chinese horoscopes

class HoroscopesScreen extends StatelessWidget {
  static const routeName = 'horoscopes';
  HoroscopesScreen();
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    //null safety
    final categoryPath = routeArgs['imagePath'];
    String path;
    if (categoryPath == null) {
      path = 'image/1.png';
    } else {
      path = categoryPath;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${categoryTitle as String} Daily Horoscope',
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            //text
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoryTitle,
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  GenerateDate(),
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  GenerateHoroscope(),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  GenerateLuckyNumbers(),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          Container(
            //image
            alignment: Alignment.center,
            child: Container(
              height: 220,
              width: 300,
              child: Image.asset(path),
            ),
          ),
        ],
      ),
    );
  }
}

String GenerateDate() {
  final date = DateTime.now();

  String monthName = 'default';
  int month = date.month;

  switch (month) {
    case 1:
      monthName = 'January';
      break;
    case 2:
      monthName = 'February';
      break;
    case 3:
      monthName = 'March';
      break;
    case 4:
      monthName = 'April';
      break;
    case 5:
      monthName = 'May';
      break;
    case 6:
      monthName = 'June';
      break;
    case 7:
      monthName = 'July';
      break;
    case 8:
      monthName = 'August';
      break;
    case 9:
      monthName = 'September';
      break;
    case 10:
      monthName = 'October';
      break;
    case 11:
      monthName = 'November';
      break;
    case 12:
      monthName = 'December';
      break;
  }

  return '${monthName}  ${date.day},  ${date.year}';
}

String GenerateHoroscope() {
  Random random = new Random();
  int rand = random.nextInt(9);
  return DUMMY_HOROSCOPES[rand];
}

String GenerateLuckyNumbers() {
  Random random = new Random();
  int rand1 = random.nextInt(10); //0-9
  int rand2 = random.nextInt(10) + 10; //0-9 + 10
  int rand3 = random.nextInt(10) + 20; //0-9 + 20
  int rand4 = random.nextInt(10) + 40; //0-9 + 30

  return 'Lucky Numbers:     ${rand1.toString()}   ${rand2.toString()}   ${rand3.toString()}   ${rand4.toString()}';
}
