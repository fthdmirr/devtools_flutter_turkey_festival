import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class FlutterPerformanceView extends StatelessWidget {
  const FlutterPerformanceView({Key? key}) : super(key: key);

  final List<Widget> _pages = const [
    PerformancePage(),
    CPUProfilingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: _pages.length,
          itemBuilder: (context, index) => _pages[index]),
    );
  }
}

class PerformancePage extends StatelessWidget {
  const PerformancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: context.dynamicHeight(0.25),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) => index % 20 == 0
                ? _ExpansiveCardWidget(index: index)
                : _CardWidget(index: index),
          )),
        ],
      ),
    );
  }
}

class _ExpansiveCardWidget extends StatelessWidget {
  const _ExpansiveCardWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [for (var i = 0; i < 50; i++) _CardWidget(index: index)]);
  }
}

class _CardWidget extends StatelessWidget {
  const _CardWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: context.randomColor,
        ),
        title: Text('Lorem ipsum $index'),
        subtitle: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit $index'),
      ),
    );
  }
}

class CPUProfilingPage extends StatelessWidget {
  const CPUProfilingPage({Key? key}) : super(key: key);

  int _fibonacci(int value) {
    if (value < 2) {
      return value;
    } else {
      return _fibonacci(value - 2) + _fibonacci(value - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) => Card(
                  child: ListTile(
                title: Text('${_fibonacci(index)}'),
                subtitle: Text('Fibonacci fonksiyonu n=$index için'),
              ))),
    );
  }
}
