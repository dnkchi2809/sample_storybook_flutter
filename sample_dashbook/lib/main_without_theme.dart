import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:sample_dashbook/stories.dart';
import 'package:sample_dashbook/text_story.dart';

void main() {
  final dashbook = Dashbook(autoPinStoriesOnLargeScreen: true);

  addTextStories(dashbook);
  addStories(dashbook);

  runApp(dashbook);
}