import 'package:flutter/material.dart';
import 'package:vibe/component/carousel.dart';
import 'package:vibe/component/flat_card.dart';
import 'package:vibe/component/home_activity.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Image.asset(
          "assets/image/logo-03.png",
          height: 25,
        ),
        centerTitle: true,
      ),
      body: ListView(physics: const AlwaysScrollableScrollPhysics(), children: [
        const Carousel(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Activity", style: Theme.of(context).textTheme.headline4),
              HomeActivity(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Ongoing", style: Theme.of(context).textTheme.headline4),
              const SizedBox(
                height: 10,
              ),
              const FlatCard(),
              const FlatCard(),
              const FlatCard(),
            ],
          ),
        ),
      ]),
    );
  }
}
