import 'package:flutter/material.dart';
import 'package:sample_storybook_flutter/storybook_flutter/story_book.dart';

import 'buttons/button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text('tecsucj'),
            CoolButton(buttonValue: 'button', buttonColor: Colors.blue, buttonSize: 14,),
            Expanded(child: StoryBook()),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
