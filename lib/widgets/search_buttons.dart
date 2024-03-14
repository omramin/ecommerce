import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key, required this.btnStyle, required this.btnText, required this.onPrssedButton});

  final ButtonStyle btnStyle;
  final String btnText;
  final void Function() onPrssedButton;

  @override
  Widget build(BuildContext context) {
    
    // var brightness = MediaQuery.of(context).platformBrightness;
    // bool isDarkMode = brightness == Brightness.dark;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: btnStyle,
        onPressed: onPrssedButton,
        child: Text(btnText),
      ),
    );
  }
}
