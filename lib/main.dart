import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibe/screen/bottom_navigation.dart';
import 'package:vibe/screen/quick_action.dart';
import 'package:vibe/screen/voting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xff073FCF),
        textTheme: const TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40,
                color: Color(0xff272727)),
            headline2: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 35,
                color: Color(0xff868686)),
            headline3: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
            headline4: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Color(0xFF000000)),
            headline5: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
            headline6: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
            bodyText1: TextStyle(
                fontWeight: FontWeight.w600, color: Color(0xff272727)),
            // bodyText2: TextStyle(
            //     fontWeight: FontWeight.w400,
            //     fontSize: 15,
            //     color: Color(0xff868686)),
            button: TextStyle(fontWeight: FontWeight.w700)),
      ),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return CupertinoPageRoute(
                builder: (_) => const BottomNavigation(), settings: settings);
          case 'voting':
            return CupertinoPageRoute(
                builder: (_) => const Voting(), settings: settings);
          case 'quick_action':
            return CupertinoPageRoute(
                builder: (_) => const QuickAction(), settings: settings);
        }
      },
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const BottomNavigation();
  }
}
