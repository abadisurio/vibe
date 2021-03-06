import 'package:flutter/material.dart';

class CardImage extends StatefulWidget {
  const CardImage({Key? key}) : super(key: key);

  @override
  _CardImageState createState() => _CardImageState();
}

class _CardImageState extends State<CardImage> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: SizedBox(
            height: 300,
            width: double.infinity,
            child: Stack(
              children: [
                const Image(
                  height: double.infinity,
                  image: NetworkImage(
                      "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=240"),
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0.0),
                            Colors.black.withOpacity(0.7),
                          ],
                          stops: const [
                            0.0,
                            1.0
                          ])),
                  height: double.infinity,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pengumuman",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.merge(const TextStyle(color: Colors.white)),
                      ),
                      const Text("Semua pengumuman ada di sini",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
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
        ),
      ],
    );
  }
}
