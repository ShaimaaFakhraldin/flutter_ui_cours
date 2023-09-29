import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

/// images
/// 1- images from assets
/// 2 - images from Internet
/// 3 - Images from local

class ImageExample extends StatefulWidget {
  const ImageExample({super.key});

  @override
  State<ImageExample> createState() => _ImageExampleState();
}

class _ImageExampleState extends State<ImageExample> {
  File fileImage = File("");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Example"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Image assets
          const Image(
            // image provider
            image: AssetImage("assets/images/pic01.png"),
            height: 200,
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          // Image internet
          const Image(
              image: NetworkImage(
                  "https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/2020-08/shutterstock_1731284125_0.jpg?itok=89UrdUt_")),
          const SizedBox(
            height: 20,
          ),
          // image from file
          Visibility(
              visible: fileImage.path.isNotEmpty,
              child: Image.file(
                fileImage,
                height: 200,
                width: 200,
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getImageFromGallery();
        },
        child: const Icon(Icons.camera),
      ),
    );
  }

  void getImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    XFile? file = await picker.pickImage(source: ImageSource.camera);
    fileImage = File(file!.path);
    setState(() {});
  }
}
