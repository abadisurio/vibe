import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F0F0),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).primaryColor,
            pinned: true,
            snap: true,
            floating: true,
            stretch: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.blurBackground,
                StretchMode.zoomBackground
              ],
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.location_pin,
                    color: Colors.white,
                  ),
                  Text('At School', textAlign: TextAlign.center),
                ],
              ),
              // background: Image.network(
              //   'https://images.pexels.com/photos/5212345/pexels-photo-5212345.jpeg?auto=compress&cs=tinysrgb&h=240',
              //   fit: BoxFit.cover,
              // ),
              background: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=240')),
                  Text("Bunga\n52830190\nXI MIPA 3\n",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.merge(const TextStyle(color: Colors.white))),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(children: [
                    Text(
                      'Do you have any suggestion?',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      'Let us know',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    const Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          maxLines: 4,
                          decoration: InputDecoration.collapsed(
                              hintText: "Enter your text here"),
                        ),
                      ),
                    ),
                  ]),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
