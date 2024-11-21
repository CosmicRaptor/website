import 'package:flutter/material.dart';
import 'package:website/widgets/page_switch_buttons.dart';
import 'package:website/widgets/project_card.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    final double screenheight = MediaQuery.of(context).size.height;
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
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (!isMobile)
              Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenheight * 0.01,
                    ),
                    const PageWidget(buttonText: "Home"),
                    const PageWidget(buttonText: "Projects"),
                    const PageWidget(buttonText: "Socials"),
                    const PageWidget(buttonText: "Photos"),
                  ],
                ),
              ),
            Flexible(
              flex: 10,
              child: Align(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "My Projects",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontFamily: 'Jetbrains-Mono'),
                            ),
                            SizedBox(
                              height: screenheight * 0.05,
                            ),
                            SizedBox(
                              width: isMobile
                                  ? screenwidth * 0.9
                                  : screenwidth * 0.5,
                              //height: screenheight * 0.8,
                              child: StaggeredGrid.count(
                                crossAxisCount: isMobile ? 1 : 2,
                                children: const [
                                  ProjectCard(
                                      title: "Chat app",
                                      description:
                                          "A chatting application I made as a learning exercise using Flutter and Firebase.",
                                      url:
                                          "https://github.com/CosmicRaptor/chat_app2"),
                                  ProjectCard(
                                      title: "Lemmeme",
                                      description:
                                          "A production discord bot which fetches and caches memes from Lemmy. Written using python and Discord.py",
                                      url:
                                          "https://github.com/CosmicRaptor/lemmeme"),
                                  ProjectCard(
                                      title: "Fitness app",
                                      description:
                                          "A basic WIP steps tracking app that I'm making using flutter.",
                                      url:
                                          "https://github.com/CosmicRaptor/fitness_application"),
                                  ProjectCard(
                                      title: "This website!",
                                      description:
                                          "It's written using flutter web, using as few 3rd party widgets as possible.",
                                      url:
                                          "https://github.com/CosmicRaptor/website"),
                                ],
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Made with ♥️ using Flutter",
                                  style: TextStyle(
                                    fontFamily: "Jetbrains-Mono",
                                    color: Colors.white38,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
