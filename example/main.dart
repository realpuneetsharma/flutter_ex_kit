import 'package:flutter/material.dart';
import 'package:flutter_ex_kit/flutter_ex_kit.dart';

class FlutterExKitExample extends StatelessWidget {
  const FlutterExKitExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // this is for SizedBox height.
        10.height,
        // this is for SizedBox height.
        10.width,
        // this is for only padding.
        Container(
          height: 10,
          width: 20,
          color: Colors.amber,
        ).only(
          left: 10,
          right: 10,
        )
      ],
    );
  }
}
