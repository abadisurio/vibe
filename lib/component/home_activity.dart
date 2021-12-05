import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibe/screen/voting.dart';

class HomeActivity extends StatelessWidget {
  HomeActivity({Key? key}) : super(key: key);

  final List items = [
    ["My School", Icons.school, 'voting'],
    ["Trivia/Quiz", Icons.quiz_outlined, 'voting'],
    ["Voting", Icons.how_to_vote, 'voting'],
    ["Catalog", Icons.shopping_basket_outlined, 'voting'],
  ];

  // static ButtonStyle actionButton(BuildContext context) {
  //   return ElevatedButton.styleFrom(
  //     elevation: 0,
  //     shadowColor: Colors.transparent,
  //     primary: Colors.transparent, // <-- Button color
  //     onPrimary: Colors.black87, // <-- Splash color
  //   );
  // }

  static double iconSize = 40;
  static double fontSize = 13;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: items.map<Widget>((item) {
          return Expanded(
            flex: 1,
            child: InkWell(
              customBorder: const CircleBorder(),
              onTap: () {
                Navigator.pushNamed(context, 'voting');
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Icon(
                      item[1],
                      size: iconSize,
                      color: const Color(0xff073FCF),
                    ),
                  ),
                  Text(
                    '${item[0]}\n',
                    style: TextStyle(
                        fontSize: fontSize, color: const Color(0xff073FCF)),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
