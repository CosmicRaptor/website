import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/main.dart';
import 'package:website/widgets/page_switch_buttons.dart';
import 'package:website/widgets/project_card.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
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
            flex: 10,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: screenheight! /2 - 400,
                    child: Column(
                      children: [
                        const Text("My Projects", style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Jetbrains-Mono'
                        ),),
                        SizedBox(height: screenheight! * 0.05,),
                        SizedBox(
                        width: screenwidth! * 0.5,
                        height: screenheight! * 0.8,
                        child: StaggeredGrid.count(
                            crossAxisCount: 2,
                            children: const [
                              ProjectCard(title: "Chat app", description: "A chatting application I made as a learning exercise using Flutter and Firebase.", url: "https://github.com/CosmicRaptor/chat_app2"),
                              ProjectCard(title: "Lemmeme", description: "A production discord bot which fetches and caches memes from Lemmy. Written using python and Discord.py", url: "https://github.com/CosmicRaptor/lemmeme"),
                              ProjectCard(title: "Fitness app", description: "A basic WIP steps tracking app that I'm making using flutter.", url: "https://github.com/CosmicRaptor/fitness_application"),
                              ProjectCard(title: "This website!", description: "It's written using flutter web, using as few 3rd party widgets as possible.", url: "https://github.com/CosmicRaptor/website"),
                            ],
                        )
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      left: -50,
                      right: 0,
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(width: screenwidth! * 0.2, child: const Text("Made with ♥️ using Flutter", style: TextStyle(
                            fontFamily: "Jetbrains-Mono",
                            color: Colors.white38,
                            fontSize: 15,
                          ),),)
                      )
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
