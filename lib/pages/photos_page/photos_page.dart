import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:website/widgets/image_pane.dart';
import 'package:website/widgets/page_switch_buttons.dart';

class PhotosPage extends StatefulWidget {
  const PhotosPage({super.key});

  @override
  State<PhotosPage> createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  final _images = const [
    ImagePane(fileName: 'assets/images/IMG_1535.jpg'),
    ImagePane(fileName: 'assets/images/IMG_1539.JPG'),
    ImagePane(fileName: 'assets/images/IMG_1541.JPG'),
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
    return LayoutBuilder(
      builder: (context, constraints) {
        final double screenwidth = constraints.maxWidth;
        final double screenheight = constraints.maxHeight;
        bool isMobile = screenwidth < 600;

        return Scaffold(
          backgroundColor: Colors.black,
          drawer: isMobile
              ? Drawer(
                  child: Container(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: const [
                          PageWidget(buttonText: "Home"),
                          PageWidget(buttonText: "Projects"),
                          PageWidget(buttonText: "Socials"),
                          PageWidget(buttonText: "Photos"),
                        ],
                      ),
                    ),
                  ),
                )
              : null,
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: isMobile
                ? Builder(
                    builder: (context) => IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    ),
                  )
                : null,
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (!isMobile)
                  Flexible(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: screenheight * 0.01),
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
                  child: MasonryGridView.count(
                    crossAxisCount: isMobile ? 1 : 3,
                    itemCount: _images.length,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    itemBuilder: (context, index) {
                      return _images[index];
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
