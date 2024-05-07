import 'package:flutter/material.dart';

class ImagePane extends StatelessWidget {
  final String fileName;
  const ImagePane({super.key, required this.fileName});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(fileName, fit: BoxFit.fill,),
    );
  }
}
