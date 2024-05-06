import 'package:flutter/material.dart';
import 'package:website/main.dart';
import 'package:website/misc/get_image_path.dart';

class SocialsButtons extends StatefulWidget {
  final String buttonText;
  const SocialsButtons({super.key, required this.buttonText});

  @override
  State<SocialsButtons> createState() => _SocialsButtonsState();
}

class _SocialsButtonsState extends State<SocialsButtons> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => null,
      onHover: (hover){
        setState(() {
          isHovering = hover;
        });
      },
      child: AnimatedContainer(
        width: screenwidth! * 0.2,
        duration: const Duration(milliseconds: 200),
        curve: Curves.ease,
        padding: EdgeInsets.all(isHovering ? 30 : 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isHovering ? const Color.fromRGBO(0, 255, 0, 1.0) : Colors.black,
          ),
          boxShadow: const [
            BoxShadow(
              blurRadius: 5,
              spreadRadius: 10
            )
          ]
          ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 25,
              child: Image.asset(getImagePath(widget.buttonText)),
            ),
            Text(widget.buttonText, style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Jetbrains-Mono'
            ),),
          ],
        ),
        ),
      );
  }
}
