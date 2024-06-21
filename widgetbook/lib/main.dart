import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/widgets/awesome_widget.dart';

// This file does not exist yet,
// it will be generated in the next step
import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
        // The [directories] variable does not exist yet,
        // it will be generated in the next step
        directories: [
          ...directories,
          WidgetbookComponent(
            name: 'Awesome Widget',
            useCases: [
              WidgetbookUseCase(
                name: 'Default',
                builder: (context) => const AwesomeWidget(),
              )
            ],
          )
        ],
        appBuilder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: child,
          );
        },
        addons: [
          ThemeAddon<AppThemeData>(
            themes: [
              WidgetbookTheme(
                name: 'Blue',
                data: AppThemeData(
                  color: Colors.blue,
                ),
              ),
              WidgetbookTheme(
                name: 'Yellow',
                data: AppThemeData(
                  color: Colors.yellow,
                ),
              ),
            ],
            themeBuilder: (context, theme, child) {
              // Wrap use cases with the custom theme's InheritedWidget
              return AppTheme(
                data: theme,
                child: child,
              );
            },
          ),
          DeviceFrameAddon(
            devices: [
              Devices.ios.iPhone13,
              Devices.ios.iPad,
            ],
            initialDevice: Devices.ios.iPhone13,
          ),
          AlignmentAddon(
            initialAlignment: Alignment.center,
          ),
          TextScaleAddon(
            scales: [1.0, 2.0, 3.0, 4.0, 5.0],
            initialScale: 1,
          ),
          ZoomAddon(initialZoom: 1.0),
        ]);
  }
}
