import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class NetworkAndLoggingView extends StatefulWidget {
  const NetworkAndLoggingView({Key? key}) : super(key: key);

  @override
  State<NetworkAndLoggingView> createState() => _NetworkAndLoggingViewState();
}

class _NetworkAndLoggingViewState extends State<NetworkAndLoggingView> {
  String posts = '';
  bool isDone = true;

  @override
  void initState() {
    super.initState();
    getApis();
  }

  getApis() async {
    changeStatus();
    posts =
        (await get(Uri.parse('https://jsonplaceholder.typicode.com/comments')))
            .body;

    log(posts,name: 'Comments POSTS:',level: 5,time: DateTime.now());
    changeStatus();
  }

  changeStatus() {
    setState(() {
      isDone = !isDone;
    });
  }

  @override
  Widget build(BuildContext context) {
    get(Uri.parse('https://google.com'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network and Logging Page'),
      ),
      body: Center(
          child: isDone
              ? Text(posts.toString())
              : const CircularProgressIndicator()),
    );
  }
}
