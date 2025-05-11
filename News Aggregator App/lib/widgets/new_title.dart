import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/news_controller.dart';
import '../models/news_model.dart';
import '../pages/news_detail_page.dart';

class NewsTile extends StatelessWidget {
  final NewsArticle article;
  final controller = Get.find<NewsController>();

  NewsTile({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    final isFav = controller.favorites.contains(article);

    return ListTile(
      leading: Image.network(article.urlToImage, width: 100, errorBuilder: (_, __, ___) => const Icon(Icons.image)),
      title: Text(article.title),
      subtitle: Text(article.description),
      trailing: IconButton(
        icon: Icon(isFav ? Icons.favorite : Icons.favorite_border),
        onPressed: () => controller.toggleFavorite(article),
      ),
      onTap: () => Get.to(() => NewsDetailPage(article: article)),
    );
  }
}
