import 'package:flutter/material.dart';
import 'package:sample_storybook_flutter/storybook_flutter/story_book.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text('tecsucj'),
            Expanded(child: StoryBook()),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
