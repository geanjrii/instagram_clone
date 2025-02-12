import 'package:flutter/material.dart';
import 'package:instagram_clone/feature_layer/home/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuAction extends StatelessWidget {
  const ResponsiveMenuAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleConditions: const [
            Condition.smallerThan(name: TABLET),
          ],
          child: IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        ),
        const SizedBox(width: 4),
        IconButton(icon: const Icon(Icons.home), onPressed: () {}),
        const SizedBox(width: 4),
        IconButton(icon: const Icon(Icons.send), onPressed: () {}),
        const SizedBox(width: 4),
        IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
        const SizedBox(width: 16),
        const CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              imgLink),
        )
      ],
    );
  }
}
