import 'package:flutter/material.dart';
import 'package:vibe/component/flat_card_image.dart';

class ClubExtracurricular extends StatefulWidget {
  const ClubExtracurricular({Key? key}) : super(key: key);

  @override
  _ClubExtracurricularState createState() => _ClubExtracurricularState();
}

class _ClubExtracurricularState extends State<ClubExtracurricular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) =>
            const FlatCardImage());
  }
}
