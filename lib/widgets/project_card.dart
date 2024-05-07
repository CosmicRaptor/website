import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/main.dart';

class ProjectCard extends StatefulWidget {
  final String title, description, url;
  const ProjectCard({super.key, required this.title, required this.description, required this.url});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovering = false;
  final double width = screenwidth! * 0.2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: (){launchUrl(Uri.parse(widget.url));},
        onHover: (hover){
          setState(() {
            isHovering = hover;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.ease,
          padding: EdgeInsets.all(isHovering ? 35 : 20),
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
          child: Card(
            color: Colors.white10,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(widget.title, style: const TextStyle(
                    fontFamily: 'Jetbrains-Mono',
                    fontSize: 25,
                    color: Colors.white
                  ),),
                  SizedBox(height: screenheight! * 0.05,),
                  Text(widget.description, style: const TextStyle(
                    fontFamily: 'Jetbrains-Mono',
                    fontSize: 15,
                    color: Colors.white60,
                  ),),
                  SizedBox(height: screenheight! * 0.05,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
