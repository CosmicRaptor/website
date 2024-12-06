import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website/pages/index_page/index_page_containers.dart';

import '../../misc/page_state.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          //icon button to close
          IconButton(
            onPressed: () {
              context.go('/${PageState.previousPage}');
            },
            icon: const Icon(
              Icons.close,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IndexPageContainers(
                buttonText: 'Home',
                routeToPush: '',
              ),
              IndexPageContainers(
                buttonText: 'Projects',
                routeToPush: 'projects',
              ),
              IndexPageContainers(
                buttonText: 'Socials',
                routeToPush: 'socials',
              ),
              IndexPageContainers(
                buttonText: 'About',
                routeToPush: 'about',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
