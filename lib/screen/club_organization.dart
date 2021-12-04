import 'package:flutter/material.dart';
import 'package:vibe/component/card_image.dart';

class ClubOrganization extends StatefulWidget {
  const ClubOrganization({Key? key}) : super(key: key);

  @override
  _ClubOrganizationState createState() => _ClubOrganizationState();
}

class _ClubOrganizationState extends State<ClubOrganization> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) => const CardImage());
  }
}
