import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Import the widget from your app
import 'package:sample_storybook_flutter/buttons/button.dart';

@widgetbook.UseCase(name: 'Default', type: CoolButton)
Widget buildCoolButtonUseCase(BuildContext context) {
  return CoolButton(
    buttonValue:
        context.knobs.string(label: 'buttonValue', initialValue: 'button'),
    buttonColor: context.knobs.color(label: 'color', initialValue: Colors.blue),
    buttonSize: context.knobs.double.slider(label: 'size', initialValue: 14),
  );
}
