import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/news_model.dart';
import '../services/news_service.dart';

class NewsController extends GetxController {
  var articles = <NewsArticle>[].obs;
  var favorites = <NewsArticle>[].obs;
  var isLoading = false.obs;
  var selectedCategory = 'general'.obs;
  var searchQuery = ''.obs;

  final NewsService _newsService = NewsService();

  @override
  void onInit() {
    fetchNews();
    loadFavorites();
    super.onInit();
  }

  void fetchNews() async {
    try {
      isLoading(true);
      final fetched = await _newsService.fetchNews(selectedCategory.value);
      articles.assignAll(fetched);
    } finally {
      isLoading(false);
    }
  }

  void searchNews(String query) async {
    try {
      isLoading(true);
      final results = await _newsService.searchNews(query);
      articles.assignAll(results);
    } finally {
      isLoading(false);
    }
  }

  void changeCategory(String category) {
    selectedCategory.value = category;
    fetchNews();
  }

  void toggleFavorite(NewsArticle article) async {
    if (favorites.contains(article)) {
      favorites.remove(article);
    } else {
      favorites.add(article);
    }
    await saveFavorites();
  }

  Future<void> saveFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> saved = favorites.map((e) => e.url).toList();
    prefs.setStringList('favorites', saved);
  }

  Future<void> loadFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> savedUrls = prefs.getStringList('favorites') ?? [];
    favorites.removeWhere((a) => !savedUrls.contains(a.url));
  }
}
