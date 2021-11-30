import 'package:flutter/material.dart';

class FlatCard extends StatefulWidget {
  const FlatCard({Key? key}) : super(key: key);

  @override
  _FlatCardState createState() => _FlatCardState();
}

class _FlatCardState extends State<FlatCard> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xffE8EEFF),
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Physics\n(Joni Panjaitan, S.Pd.)",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const Text(
            "09:00 - 11.00",
          ),
        ],
      ),
    );
  }
}
