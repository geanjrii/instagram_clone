import 'package:flutter/material.dart';
import 'package:instagram_clone/feature_layer/home/constants.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.green,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          alignment: Alignment.center,
          child: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black87,
            ),
            alignment: Alignment.center,
            child: const CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(
                imgLink,
              ),
            ),
          ),
        ),
        const Text(
          'geanjr',
          style: TextStyle(fontSize: 12, color: Colors.white),
        )
      ],
    );
  }
}
