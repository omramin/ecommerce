import 'package:flutter/material.dart';

import 'package:ecommerce/screens/result_screen.dart';
import 'package:ecommerce/screens/search_item.dart';
import 'package:ecommerce/screens/visual_search.dart';
import 'package:ecommerce/screens/take_photo.dart';

import 'package:ecommerce/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: isDarkMode ? TAppTheme.lightTheme : TAppTheme.lightTheme,
      home: const VisualSearch(),
      routes: {
        'take-photo': (context) => const TakePhoto(),
        'search-item': (context) => const SearchItem(),
        'result-screen': (context) => const ResultScreen(),
        
      },
    );
  }
}
