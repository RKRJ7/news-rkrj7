import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rkrj7_news/auth/delicate_info.dart';
import 'package:rkrj7_news/models/news_model.dart';

class News {
  Future<List<NewsModel>> getHotNews() async {
    List<NewsModel> hotNews = [];

    try {
      final res = await http.get(
        Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=$apikey',
        ),
      );

      final data = jsonDecode(res.body);

      if (res.statusCode != 200) {
        throw 'Error Occured';
      }

      final List articlelist = data["articles"];
      for (var e in articlelist) {
        if (e['title'] != null &&
            e["description"] != null &&
            e["urlToImage"] != null) {
          hotNews.add(
            NewsModel(
              nHead: e['title'],
              nDesc: e["description"],
              nImage: e["urlToImage"],
              nUrl: e["url"],
            ),
          );
        }
      }
      return hotNews;
    } catch (e) {
      throw e.toString();
    }
  }
  Future<List<NewsModel>> getCatNews(String cat) async {
    List<NewsModel> catNews = [];
    String category = cat.toLowerCase();

    try {
      final res = await http.get(
        Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=$apikey',
        ),
      );

      final data = jsonDecode(res.body);

      if (res.statusCode != 200) {
        throw 'Error Occured';
      }

      final List articlelist = data["articles"];
      for (var e in articlelist) {
        if (e['title'] != null &&
            e["description"] != null &&
            e["urlToImage"] != null) {
          catNews.add(
            NewsModel(
              nHead: e['title'],
              nDesc: e["description"],
              nImage: e["urlToImage"],
              nUrl: e["url"],
            ),
          );
        }
      }
      return catNews;
    } catch (e) {
      throw e.toString();
    }
  }
}
