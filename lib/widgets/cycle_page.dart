import 'package:flutter/material.dart';
import 'package:redesign_naam/widgets/cycles_list_page.dart';

class SecondCarousel extends StatelessWidget {
  SecondCarousel(
      {@required this.pageController,
      @required this.title,
      @required this.posts});
  final PageController pageController;
  final String title;
  final List<Post> posts;

  _buildPost(context, int index) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1.0;
        if (pageController.position.haveDimensions) {
          value = pageController.page - index;
          value = (1 - (value.abs() * 0.2)).clamp(0.0, 05);
        }

        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 400,
            // width: Curves.easeInOut.transform(value) * 340,
            child: widget,
          ),
        );
      },
      child: Stack(
        children: <Widget>[
          // Container(child: Text(posts[index].name)),
          Container(
            height: 300.0,
            width: 350.0,
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  posts[index].icon,
                  color: Colors.white,
                  size: 190.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 400.0,
      child: PageView.builder(
          controller: pageController,
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildPost(context, index);
          }),
    );
  }
}
