import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website/misc/page_state.dart';
import 'package:website/widgets/project_card.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  List<ProjectCard> projectsList = [
    ProjectCard(
      title: 'Chat app',
      description: 'Flutter and firebase based chat app for mobile devices',
      url: 'https://github.com/CosmicRaptor/chat_app2',
      filepath: 'chat_app.png',
    ),
    ProjectCard(
        title: 'Project Obsidian',
        description:
            'TCP socket and mDNS implementation of a P2P chatting protocol using Dart',
        url: 'https://github.com/CosmicRaptor/project_obsidian/',
        filepath: 'obsidian.png'),
    ProjectCard(
        title: 'TSEC App',
        description: 'TSEC\'s official app made using Flutter and Firebase',
        url: 'https://tsecdevsclub.com/',
        filepath: 'tsec_app.png'),
    ProjectCard(
        title: 'This website!',
        description:
            'Made with Flutter web, using as few 3rd party modules as possible',
        url: 'https://github.com/CosmicRaptor/cosmicraptor.github.io',
        filepath: 'website.png'),
  ];

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600 ? true : false;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Projects',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              PageState.previousPage = 'projects';
              context.go('/index');
            },
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: isMobile
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: projectsList,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            projectsList[0],
                            projectsList[2],
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            projectsList[1],
                            projectsList[3],
                          ],
                        )
                      ],
                    )),
        ),
      ),
    );
  }
}
