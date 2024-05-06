import 'package:go_router/go_router.dart';
import 'package:website/pages/landing%20page/landing_page.dart';
import 'package:website/pages/photos_page/photos_page.dart';
import 'package:website/pages/projects_page/projects_page.dart';
import 'package:website/pages/socials_page/socials_page.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state)=> const LandingPage()),
  GoRoute(path: '/projects', builder: (context, state)=> const ProjectsPage()),
  GoRoute(path: '/socials', builder: (context, state)=> const SocialsPage()),
  GoRoute(path: '/photos', builder: (context, state) => const PhotosPage()),
]);