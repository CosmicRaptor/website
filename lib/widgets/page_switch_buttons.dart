import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website/misc/get_route.dart';

class PageWidget extends StatefulWidget {
  final String buttonText;
  const PageWidget({super.key, required this.buttonText});

  @override
  State<PageWidget> createState() => _PageWidgetState();
}

class _PageWidgetState extends State<PageWidget> {
  bool isHovering4 = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (hovering) {
        setState(() {
          isHovering4 = hovering;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.ease,
        padding: EdgeInsets.all(isHovering4 ? 15 : 10),
        decoration: BoxDecoration(
            color: isHovering4 ? Colors.white24 : Colors.black,
            borderRadius: BorderRadius.circular(15)),
        child: TextButton(
          onPressed: () {
            context.go(getRoute(widget.buttonText));
          },
          style: TextButton.styleFrom(
              textStyle: const TextStyle(color: Colors.white)),
          child: Text(
            widget.buttonText,
            style: const TextStyle(
              fontFamily: 'Jetbrains-Mono',
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
