import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website/pages/index_page/index_page.dart';
import 'package:website/pages/landing%20page/landing_page.dart';
import 'package:website/pages/projects_page/projects_page.dart';
import 'package:website/pages/socials_page/socials_page.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const LandingPage()),
  GoRoute(path: '/projects', builder: (context, state) => const ProjectsPage()),
  GoRoute(path: '/socials', builder: (context, state) => const SocialsPage()),
  GoRoute(
      path: '/index',
      builder: (context, state) => const IndexPage(),
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const IndexPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0); // Slide in from the bottom
            const end = Offset.zero; // End at its final position
            const curve = Curves.ease;

            final tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            final offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
      }),
]);
