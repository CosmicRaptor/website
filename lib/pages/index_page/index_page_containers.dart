import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IndexPageContainers extends StatefulWidget {
  final String buttonText;
  final String routeToPush;
  const IndexPageContainers(
      {super.key, required this.buttonText, required this.routeToPush});

  @override
  State<IndexPageContainers> createState() => _IndexPageContainersState();
}

class _IndexPageContainersState extends State<IndexPageContainers> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go('/${widget.routeToPush}');
      },
      onHover: (value) {
        setState(() {
          isHovering = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: isHovering ? 600 : 500,
        // height: isHovering ? 70 : 60,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          borderRadius: BorderRadius.circular(10),
          color: isHovering ? Colors.grey.shade800 : Colors.black,
        ),
        child: Text(
          widget.buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: isHovering ? 26 : 22, color: Colors.white),
        ),
      ),
    );
  }
}
