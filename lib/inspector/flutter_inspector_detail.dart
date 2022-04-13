import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class FlutterInspectorDetail extends StatelessWidget {
  const FlutterInspectorDetail({Key? key, required this.imagePath})
      : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Hero(
              tag: imagePath,
              child: SizedBox(
                height: context.dynamicHeight(0.3),
                width: context.dynamicWidth(1),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: context.normalRadius,
                      bottomRight: context.normalRadius),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            context.emptySizedHeightBoxLow3x,
            Row(
              children: const [
                Text(
                    '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
