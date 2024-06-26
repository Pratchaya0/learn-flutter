import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/models/post.dart';
import 'package:learn_flutter/models/story.dart';
import 'package:learn_flutter/widgets/category_slider.dart';
import 'package:learn_flutter/widgets/post_card.dart';
import 'package:learn_flutter/widgets/story_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hi! Johnathan!",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/img/icons/notification.png",
                        width: 35,
                        height: 35,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Explore today's",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 100,
                  // mapping
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => StoryItem(
                      story: stories[index],
                    ),
                    itemCount: stories.length,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CategorySlider(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Latest News",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("more"),
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) => PostCard(
                    post: posts[index],
                  ),
                  itemCount: posts.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
