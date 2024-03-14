import 'package:flutter/material.dart';

import 'package:ecommerce/themes/text_theme.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 50,
              color: Colors.red,
              onPressed: () {},
              icon: const Icon(Icons.search),
              
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Finding Similar\nResults...',
              style: isDarkMode
                      ? TTextTheme.darkTextThem.headlineMedium
                      : TTextTheme.lightTextThem.headlineMedium,
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
