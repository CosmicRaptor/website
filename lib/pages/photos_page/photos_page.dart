import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:website/main.dart';
import 'package:website/widgets/image_pane.dart';
import 'package:website/widgets/page_switch_buttons.dart';

class PhotosPage extends StatefulWidget {
  const PhotosPage({super.key});

  @override
  State<PhotosPage> createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {

  final _images = const [
    ImagePane(fileName: 'assets/images/20221023081459_IMG_0712.JPG'),
    ImagePane(fileName: 'assets/images/IMG_0738.JPG'),
    ImagePane(fileName: 'assets/images/IMG_0740.JPG'),
    ImagePane(fileName: 'assets/images/IMG_0804.JPG'),
    ImagePane(fileName: 'assets/images/IMG_0815.JPG'),
    ImagePane(fileName: 'assets/images/IMG_0924.JPG'),
    ImagePane(fileName: 'assets/images/IMG_0955.JPG'),
    ImagePane(fileName: 'assets/images/IMG_1031.JPG'),
    ImagePane(fileName: 'assets/images/IMG_1069.JPG'),
    ImagePane(fileName: 'assets/images/IMG_1105.JPG'),
    ImagePane(fileName: 'assets/images/IMG_1130.JPG'),
    ImagePane(fileName: 'assets/images/IMG_1179.JPG'),
    ImagePane(fileName: 'assets/images/IMG_1182.JPG'),
    ImagePane(fileName: 'assets/images/IMG_20230628_101614298.jpg'),
    ImagePane(fileName: 'assets/images/IMG_20240115_184957166.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Flexible(
          flex: 2,
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenheight! * 0.01,),
              const PageWidget(buttonText: "Home"),
              const PageWidget(buttonText: "Projects"),
              const PageWidget(buttonText: "Socials"),
              const PageWidget(buttonText: "Photos"),
            ],
          ),
          ),
        ),
        Flexible(
          flex: 8,
          child: SizedBox(
            // height: screenheight! * 0.6,
            width: screenwidth! * 0.7,
            child: MasonryGridView.count(crossAxisCount: 3,
            itemCount: 14,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            itemBuilder: (context, index) {
              if (index < _images.length) {
                return _images[index];
              } else {
                return const Placeholder();
              }
            },
            ),
          ),
        )
      ],
      ),
    );
  }
}
