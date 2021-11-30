import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _currentPage = 0;

  final List carouselItem = [
    [
      "Brianna Jovanka XI MIPA 1 Became A Champion of Indonesia Youth BioInventor 2021 ",
      "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=240"
    ],
    [
      "Pemuda-pemudi ini menemukan cara magang paling mudah",
      "https://images.pexels.com/photos/1595385/pexels-photo-1595385.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=240"
    ],
    [
      "Berikut cara belajar paling efektif di kalangan pelajar",
      "https://images.pexels.com/photos/5212345/pexels-photo-5212345.jpeg?auto=compress&cs=tinysrgb&h=240"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  height: 253.0,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage = index;
                    });
                  }),
              items: carouselItem.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(i[1]), fit: BoxFit.cover)),
                        child: Stack(
                          children: [
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
                                children: [
                                  Text(
                                    i[0],
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        ?.merge(const TextStyle(
                                            color: Colors.white)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ));
                  },
                );
              }).toList(),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: carouselItem.map<Widget>(
            (item) {
              return Container(
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == carouselItem.indexOf(item)
                        ? const Color.fromRGBO(0, 0, 0, 0.9)
                        : const Color.fromRGBO(0, 0, 0, 0.4)),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
