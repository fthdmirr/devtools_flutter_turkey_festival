import 'package:flutter/material.dart';

class MemoryView extends StatefulWidget {
  const MemoryView({Key? key}) : super(key: key);

  @override
  State<MemoryView> createState() => _MemoryViewState();
}

class _MemoryViewState extends State<MemoryView> {
  int _count = 0;

  void _addImageToList() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Memory View')),
        body: ImageListViewBuilder(count: _count),
        floatingActionButton: _addImageFloatingActionButton());
  }

  FloatingActionButton _addImageFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () => _addImageToList(),
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}

class ImageListViewBuilder extends StatelessWidget {
  const ImageListViewBuilder({
    Key? key,
    required this.count,
  }) : super(key: key);

  final int count;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (context, index) => Image.network(
        'https://picsum.photos/id/$index/1280/1024',
        cacheWidth: 1080,
        cacheHeight: 864,
      ),
    );
  }
}

class ImageListView extends StatelessWidget {
  const ImageListView({
    Key? key,
    required int count,
  })  : _count = count,
        super(key: key);

  final int _count;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (var i = 0; i < _count; i++)
          Image.network('https://picsum.photos/id/$i/1280/1024')
      ],
    );
  }
}
