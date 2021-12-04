import 'package:flutter/material.dart';
import 'package:vibe/screen/club_extracurricular.dart';
import 'package:vibe/screen/club_organization.dart';

class ClubActivity extends StatefulWidget {
  const ClubActivity({Key? key}) : super(key: key);

  @override
  _ClubActivityState createState() => _ClubActivityState();
}

class _ClubActivityState extends State<ClubActivity> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Club",
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
          bottom: TabBar(
            labelStyle: Theme.of(context).textTheme.headline6,
            indicatorWeight: 5,
            labelColor: const Color(0xff000000),
            tabs: const [
              Tab(
                text: "Extracurricular",
              ),
              Tab(
                text: "Organization",
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ClubExtracurricular(),
            ClubOrganization(),
          ],
        ),
      ),
    );
  }
}
