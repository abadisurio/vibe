import 'package:flutter/material.dart';

class FlatCardImage extends StatefulWidget {
  const FlatCardImage({Key? key}) : super(key: key);

  @override
  _FlatCardImageState createState() => _FlatCardImageState();
}

class _FlatCardImageState extends State<FlatCardImage> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: SizedBox(
        height: 300,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 2,
                  child: Image.network(
                    "https://images.pexels.com/photos/5212345/pexels-photo-5212345.jpeg?auto=compress&cs=tinysrgb&h=240",
                    fit: BoxFit.cover,
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(15),
                    title: Text(
                      'One-line with leading widget',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                        "An extracurricular for everyone who interested in science"),
                  ),
                ),
              ],
            ),
            SizedBox.expand(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    // print("pencet");
                  },
                ),
              ),
            )
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
    );
  }
}
