import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/news_controller.dart';
import '../widgets/news_tile.dart';

class FavoritesPage extends StatelessWidget {
  final controller = Get.find<NewsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorite Articles')),
      body: Obx(() {
        if (controller.favorites.isEmpty) {
          return const Center(child: Text('No favorites yet.'));
        }
        return ListView.builder(
          itemCount: controller.favorites.length,
          itemBuilder: (_, i) => NewsTile(article: controller.favorites[i]),
        );
      }),
    );
  }
}
