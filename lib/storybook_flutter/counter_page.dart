import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({
    super.key,
    required this.title,
    this.enabled = true,
  });

  final String title;
  final bool enabled;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() => setState(() => _counter++);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
      actions: [
        IconButton(
          icon: const Icon(Icons.help),
          onPressed: () => showAboutDialog(
            context: context,
            applicationName: 'Storybook',
            applicationVersion: '0.0.1',
            applicationIcon: const Icon(Icons.book),
            applicationLegalese: 'MIT License',
          ),
        ),
      ],
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('You have pushed the button this many times:'),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    ),
    floatingActionButton: widget.enabled
        ? FloatingActionButton(
      heroTag: 'FAB',
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    )
        : null,
  );
}