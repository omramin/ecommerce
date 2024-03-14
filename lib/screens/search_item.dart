import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class SearchItem extends StatefulWidget {
  const SearchItem({super.key});
  @override
  State<SearchItem> createState() => _SearchItemState();
}

class _SearchItemState extends State<SearchItem> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pickImg();
    });
  }

  File? _selectedImage;

  void _pickImg() async {
    final imagePicker = ImagePicker();
    final pickedImage =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImage == null) {
      return;
    }

    setState(() {
      _selectedImage = File(pickedImage.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content = TextButton.icon(
      icon: const Icon(Icons.image),
      label: const Text('Choose an image'),
      onPressed: _pickImg,
    );

    if (_selectedImage != null) {
      content = GestureDetector(
        onTap: _pickImg,
        child: Image.file(
          _selectedImage!,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('choose an image'),
      ),
      body: Column(
        children: [
          Container(
            height: 600,
            width: double.infinity,
            alignment: Alignment.center,
            child: content,
          ),
          IconButton(
            onPressed: () {
              if (_selectedImage != null) {
                Navigator.pushNamed(context, 'result-screen');
              }
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
    );
  }
}
