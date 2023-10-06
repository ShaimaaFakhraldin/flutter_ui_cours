import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text("height width "),
          ),
          Image(
            image: AssetImage("assets/images/pic01.png"),
            height: 200,
            width: 200,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text("BoxFit.fill"),
          ),
          Image(
            image: AssetImage("assets/images/pic01.png"),
            fit: BoxFit.fill,
            height: 200,
            width: 200,
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text("BoxFit.fitHeight"),
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 100,
                    child: Image(
                      image: AssetImage("assets/images/pic01.png"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text("BoxFit.fitWidth"),
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 100,
                    child: Image(
                      image: AssetImage("assets/images/pic01.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              )
            ],
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text("BoxFit.contain"),
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 100,
                    child: Image(
                      image: AssetImage("assets/images/pic01.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text("BoxFit.cover"),
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 100,
                    child: Image(
                      image: AssetImage("assets/images/pic01.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              )
            ],
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text("BoxFit.scaleDown"),
          ),
          Container(
            color: Colors.yellow,
            width: 200,
            height: 200,
            child: Image(
              alignment: Alignment.centerRight,
              image: AssetImage("assets/images/pic01.png"),
              fit: BoxFit.scaleDown,
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text("BoxFit.scaleDown"),
          ),
          Container(
              color: Colors.yellow,
              width: 200,
              height: 200,
              child: const Opacity(
                opacity: 0.6,
                child: Image(
                  alignment: Alignment.centerRight,
                  // color: Colors.red.shade100,
                  image: AssetImage("assets/images/pic01.png"),
                  fit: BoxFit.scaleDown,
                ),
              )),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text("BoxFit.scaleDown"),
          ),
          Container(
            color: Colors.yellow,
            width: 200,
            height: 200,
            child: const Image(
              alignment: Alignment.centerRight,
              image: AssetImage("assets/images/pic01.png"),
              repeat: ImageRepeat.repeatX,
              fit: BoxFit.scaleDown,
            ),
          ),
          SvgPicture.asset("assets/phone.svg",
              height: 100,
              width: 100,
              colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
              semanticsLabel: 'A red up arrow'),
          SizedBox(
            height: 200,
          )

          // Image assets
          // const Image(
          //   // image provider
          //   image: AssetImage("assets/images/pic01.png"),
          //   height: 200,
          //   width: 200,
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          // // Image internet
          // const Image(
          //     image: NetworkImage(
          //         "https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/2020-08/shutterstock_1731284125_0.jpg?itok=89UrdUt_")),
          // const SizedBox(
          //   height: 20,
          // ),
          // // image from file
          // Visibility(
          //     visible: fileImage.path.isNotEmpty,
          //     child: Image.file(
          //       fileImage,
          //       height: 200,
          //       width: 200,
          //     )),
        ],
      )),
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
