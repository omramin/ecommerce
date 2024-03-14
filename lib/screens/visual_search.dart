import 'package:ecommerce/themes/elevated_button_theme.dart';
import 'package:flutter/material.dart';

// import 'package:ecommerce/screens/take_photo.dart';
import 'package:ecommerce/widgets/search_buttons.dart';
import 'package:ecommerce/themes/text_theme.dart';

class VisualSearch extends StatelessWidget {
  const VisualSearch({super.key});



  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    // print('height: ${MediaQuery.of(context).size.height}');
    // print('width: ${MediaQuery.of(context).size.width}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('search by photo'),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/visual_search_bg.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Color.fromARGB(183, 0, 0, 0),
              BlendMode.darken,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            // vertical: 8,
            horizontal: 20,
          ),

          //* Column
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Search for an outfit by taking \na photo or uploading an image',
                  style: isDarkMode
                      ? TTextTheme.darkTextThem.headlineMedium
                      : TTextTheme.darkTextThem.headlineMedium,
                  softWrap: true,
                ),
                const SizedBox(height: 30),
                //!
                SearchButton(
                  btnStyle: TElevatedButtonTheme.takePhotoButton.style!,
                  btnText: 'TAKE A PHOTO',
                  onPrssedButton: () {
                    Navigator.pushNamed(context, 'take-photo');
                  },
                ),
                const SizedBox(height: 15),
                //!
                SearchButton(
                  btnStyle: TElevatedButtonTheme.uploadImageButton.style!,
                  btnText: 'UPLOAD AN IMAGE',
                  onPrssedButton: () {
                    Navigator.pushNamed(context, 'search-item');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
