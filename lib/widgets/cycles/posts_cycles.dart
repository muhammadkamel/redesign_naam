// import 'package:flutter/material.dart';

// class Post {
//   Post({this.name, this.icon});
//   final String name;
//   final IconData icon;
// }

// final _post1 = Post(name: 'Post1', icon: Icons.alarm_on);
// final _post2 = Post(name: 'Post2', icon: Icons.alarm_off);
// final _post3 = Post(name: 'Post3', icon: Icons.alarm_add);
// final _post4 = Post(name: 'Post3', icon: Icons.alarm_add);
// final _post5 = Post(name: 'Post3', icon: Icons.alarm_add);
// final _post6 = Post(name: 'Post3', icon: Icons.alarm_add);

// final posts = [_post1, _post2, _post3, _post4, _post5, _post6];

// class PostsCycles extends StatelessWidget {
//   // PostsCycles({@required this.pageController, this.title, this.posts});

//   // final PageController pageController;
//   // final String title;
//   // final List<Post> posts;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Posts Cycles'),
//       ),
//       body: PageView.builder(
//         itemBuilder: (BuildContext context, int index) {
// //          return Container(child: Text('Home'));
//           return _buildPost(context, index);
//         },
//       ),
//     );
//   }

//   _buildPost(BuildContext context, int index) {
// //    Post post = posts[index];
//     return AnimatedBuilder(
//       animation: pageController,
//       builder: (BuildContext context, Widget widget) {
//         double value = 1;
//         if (pageController.position.haveDimensions) {
//           value = pageController.page - index;
//           value = (1 - (value.abs() * 0.25)).clamp(0.0, 1.0);
//         }
//         return Center(
//           child: SizedBox(
//             height: Curves.easeInOut.transform(value) * 400,
//             child: widget,
//           ),
//         );
//       },
//       child: Stack(
//         children: <Widget>[
//           Container(
//             margin: EdgeInsets.all(10.0),
//             decoration: BoxDecoration(
//               color: Colors.red,
//               borderRadius: BorderRadius.circular(15.0),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
