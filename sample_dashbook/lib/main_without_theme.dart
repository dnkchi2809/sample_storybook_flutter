import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:sample_dashbook/stories.dart';
import 'package:sample_dashbook/text_story.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dashbook = Dashbook(autoPinStoriesOnLargeScreen: true);

    // Add your stories
    addTextStories(dashbook);
    addStories(dashbook);

    return MaterialApp(
      home: Scaffold(
        body: dashbook,
      ),
    );
  }
}
