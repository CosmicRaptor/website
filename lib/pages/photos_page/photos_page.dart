import 'package:flutter/material.dart';
import 'package:website/main.dart';
import 'package:website/widgets/page_switch_buttons.dart';

class PhotosPage extends StatelessWidget {
  const PhotosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Align(
        alignment: Alignment.topLeft,
        child: Flexible(
          flex: 2,
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
      ],
      ),
    );
  }
}
