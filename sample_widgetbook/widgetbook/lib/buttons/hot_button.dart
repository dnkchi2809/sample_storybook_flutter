import 'package:flutter/material.dart';
import 'package:sample_widgetbook/buttons/button.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
// Import the widget from your app


@widgetbook.UseCase(name: 'Red button', type: CoolButton)
Widget buildCoolButtonUseCase(BuildContext context) {
  return CoolButton(
    buttonValue:
        context.knobs.string(label: 'buttonValue', initialValue: 'hot button'),
    buttonColor: context.knobs.color(label: 'color', initialValue: Colors.red),
    buttonSize: context.knobs.double.slider(label: 'size', initialValue: 14),
  );
}
