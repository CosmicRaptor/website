import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final String title, description, url, filepath;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.url,
    required this.filepath,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    // final double screenwidth = MediaQuery.of(context).size.width;
    final double screenheight = MediaQuery.of(context).size.height;

    return AnimatedOpacity(
      opacity: isHovering ? 0.5 : 1,
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: InkWell(
          onTap: () {
            launchUrl(Uri.parse(widget.url));
          },
          onHover: (hover) {
            setState(() {
              isHovering = hover;
            });
          },
          child: AnimatedContainer(
            height: isHovering ? screenheight * 0.45 : screenheight * 0.35,
            duration: const Duration(milliseconds: 200),
            curve: Curves.ease,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: isHovering
                    ? const Color.fromRGBO(0, 255, 0, 1.0)
                    : Colors.black,
              ),
            ),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/project_pics/${widget.filepath}',
                      fit: BoxFit.cover,
                    ),
                    if (isHovering)
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.infinity,
                          height: screenheight * 0.12,
                          color: Colors.black.withOpacity(0.7),
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                widget.title,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                widget.description,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                                maxLines: 2,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
