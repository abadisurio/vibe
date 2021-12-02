import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:vibe/component/flat_card.dart';

class ClassRoom extends StatefulWidget {
  const ClassRoom({Key? key}) : super(key: key);

  @override
  _ClassRoomState createState() => _ClassRoomState();
}

class _ClassRoomState extends State<ClassRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Classroom",
          style: Theme.of(context).textTheme.headline4,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        // leading: IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.arrow_back),
        //     color: Colors.black),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.ac_unit))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FlatCard(),
                FlatCard(),
                FlatCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
