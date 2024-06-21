# sample_storybook_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

- Run monarch storybook:
```
cd sample_monarch

monarch run
```

- Run storybook flutter (as a flutter app):
```
cd sample_storybook_flutter

flutter run
```

- Run widgetBook (as a separated flutter app): 
```
cd sample_widgetbook

cd widgetbook

dart run build_runner build -d //generate main.directories.g.dart

flutter run
```