import 'package:flutter/material.dart';
import 'package:instagram_clone/feature_layer/home/widgets/post_widget.dart';
import 'package:instagram_clone/feature_layer/home/widgets/responsive_app_bar.dart';
import 'package:instagram_clone/feature_layer/home/widgets/right_panel.dart';
import 'package:instagram_clone/feature_layer/home/widgets/stories_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 52),
        child: ResponsiveAppBar(),
      ),
      backgroundColor: Colors.black87,
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Row(
            children: [
              Expanded(
                child: ListView(
                  children: const [
                    StoriesList(),
                    PostWidget(),
                    PostWidget(),
                    PostWidget(),
                  ],
                ),
              ),
              const RightPanel(),
            ],
          ),
        ),
      ),
    );
  }
}
