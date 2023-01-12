import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/image_container.dart';
import '../widgets/bottom_navi_bar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  static const routeName = '/discover';
  @override
  Widget build(BuildContext context) {

    List<String> tabs = ['Health', 'Politics', 'Art',  'Food', 'Science'];


    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
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
              _DiscoverNews(),
              _CategoryNews(tabs: tabs),
            ],
          )
      ),
    );
  }
}

class _CategoryNews extends StatelessWidget {
  const _CategoryNews({Key? key, required this.tabs}) : super(key: key);

  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    final articles = Article.articles;
    return Column(
      children: [
        TabBar(
          isScrollable: true,
            indicatorColor: Colors.black,
            tabs: tabs.map((tab) => Tab(
          icon: Text(tab, style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
        )
        .toList()
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            children: tabs.map((tab) => ListView.builder(
              shrinkWrap: true,
                itemBuilder: ((context, index){
                  return Row(
                    children: [
                      ImageContainer(
                        width: 80.0,
                        height: 80.0,
                        padding: EdgeInsets.all(10.0),
                        imageUrl: articles[index].imageUrl,
                      ),
                      Text(articles[index].title),
                    ],
                  );
                }),
              )).toList(),
          ),
        )
      ],
    );
  }
}


class _DiscoverNews extends StatelessWidget {
  const _DiscoverNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
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
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
