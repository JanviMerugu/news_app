import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/news_model.dart';

class NewsService {
  final String apiKey = 'YOUR_NEWSAPI_KEY';
  final String baseUrl = 'https://newsapi.org/v2';

  Future<List<NewsArticle>> fetchNews(String category) async {
    final response = await http.get(Uri.parse(
        '$baseUrl/top-headlines?country=in&category=$category&apiKey=$apiKey'));

    if (response.statusCode == 200) {
      List data = json.decode(response.body)['articles'];
      return data.map((json) => NewsArticle.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }

  Future<List<NewsArticle>> searchNews(String query) async {
    final response = await http.get(Uri.parse(
        '$baseUrl/everything?q=$query&sortBy=publishedAt&apiKey=$apiKey'));

    if (response.statusCode == 200) {
      List data = json.decode(response.body)['articles'];
      return data.map((json) => NewsArticle.fromJson(json)).toList();
    } else {
      throw Exception('Failed to search news');
    }
  }
}
