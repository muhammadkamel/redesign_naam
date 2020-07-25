import 'package:flutter/material.dart';
import 'package:redesign_naam/widgets/posts_cycles.dart';

class GetPost extends StatefulWidget {
  @override
  _GetPostState createState() => _GetPostState();
}

class _GetPostState extends State<GetPost> with SingleTickerProviderStateMixin {
  // ignore: unused_field
  TabController _tabController;
  PageController pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Posts'),
      ),
      body: ListView(
        children: <Widget>[
          // PostsCycles(
          //   title: 'Posts',
          //   pageController: pageController,
          //   posts: posts,
          // ),
        ],
      ),
    );
  }
}
