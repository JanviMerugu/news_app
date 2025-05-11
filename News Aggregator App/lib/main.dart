import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bindings/news_binding.dart';
import 'pages/home_page.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'News App',
    initialBinding: NewsBinding(),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
