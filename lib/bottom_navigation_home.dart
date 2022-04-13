import 'package:flutter/material.dart';
import 'package:flutter_turkey_festival/performance/flutter_performance.dart';

import 'inspector/flutter_inspector.dart';
import 'memory/flutter_memory.dart';
import 'network_logging/network_logging_view.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    FlutterInspector(),
    FlutterPerformanceView(),
    MemoryView(),
    NetworkAndLoggingView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Widget Inspector',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: 'Performance',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.memory),
              label: 'Memory',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.network_cell),
              label: 'Network-Logging',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black26,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
