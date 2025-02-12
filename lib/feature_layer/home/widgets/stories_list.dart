import 'package:flutter/material.dart';
import 'package:instagram_clone/feature_layer/home/widgets/story_circle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveBreakpoints.of(context).isMobile;

    return Container(
      height: 110,
      margin: EdgeInsets.only(top: mobile ? 15 : 35),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemCount: 16,
        itemBuilder: (_, i) => const StoryCircle(),
      ),
    );
  }
}
