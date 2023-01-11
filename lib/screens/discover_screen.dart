import 'package:flutter/material.dart';

import '../widgets/bottom_navi_bar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  static const routeName = '/discover';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.black),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(index: 1),
        body: ListView(
          padding: EdgeInsets.all(20.0),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.black,
                      fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'News from all over the world',
                  style: Theme.of(context).textTheme.bodySmall!
                  ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    suffixIcon: RotatedBox(
                      quarterTurns: 90,
                      child: Icon(
                        Icons.tune,
                        color: Colors.grey,
                      ),
                    )
                  ),
                )
              ],
            )
          ],
        )
    );
  }
}
