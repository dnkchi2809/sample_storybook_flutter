import 'package:flutter/material.dart';

import 'package:dashbook/dashbook.dart';

void main() {
  final dashbook = Dashbook.dualTheme(
    light: ThemeData(),
    dark: ThemeData.dark(),
    title: 'Dashbook Example',
    autoPinStoriesOnLargeScreen: true,
  );


  // Adds the Text widget stories
  dashbook
      .storiesOf('Text')
      // Decorators are easy ways to apply a common layout to all of the story chapters, here are using onde of Dashbook's decorators,
      // which will center all the widgets on the center of the screen
      .decorator(CenterDecorator())
      // The Widget story can have as many chapters as needed
      .add('default', (widget) {
    return Container(
        width: 300,
        child: Text(
          widget.textProperty("text", "Text Example"),
          textAlign: widget.listProperty(
            "text align",
            TextAlign.center,
            TextAlign.values,
          ),
          textDirection: widget.listProperty(
            "text direction",
            TextDirection.rtl,
            TextDirection.values,
          ),
          style: TextStyle(
              fontWeight: widget.listProperty(
                "font weight",
                FontWeight.normal,
                FontWeight.values,
              ),
              fontStyle: widget.listProperty(
                "font style",
                FontStyle.normal,
                FontStyle.values,
              ),
              fontSize: widget.numberProperty("font size", 20)),
        ));
  });

  dashbook.storiesOf('RaisedButton').decorator(CenterDecorator()).add(
      'default',
      (ctx) => ElevatedButton(
          child: Text(ctx.textProperty('name', 'defaultValue')),
          onPressed: () {}));

  dashbook
      .storiesOf('CustomDialog')
      .add('default', (ctx) {
    ctx.action('Open dialog', (context) {
      showDialog(
        context: context,
        builder: (_) => Text(ctx.textProperty('name', 'defaultValue')),
      );
    });

    return Text(ctx.textProperty('name', 'defaultValue'));
  });

  // Since dashbook is a widget itself, you can just call runApp passing it as a parameter
  runApp(dashbook);
}
