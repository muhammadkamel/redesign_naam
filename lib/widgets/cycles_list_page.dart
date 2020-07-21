import 'package:flutter/material.dart';

class Post {
  Post({this.name, this.icon});
  final String name;
  final IconData icon;
}

final _post1 = Post(name: 'Post1', icon: Icons.alarm_on);
final _post2 = Post(name: 'Post2', icon: Icons.alarm_off);
final _post3 = Post(name: 'Post3', icon: Icons.alarm_add);

final posts = [_post1, _post2, _post3];
