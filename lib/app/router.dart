import 'package:go_router/go_router.dart';
import 'package:wassword/pages/about_page.dart';
import 'package:wassword/pages/home/home_page.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (_, __) => const HomePage(),
    ),
    GoRoute(
      path: '/about',
      builder: (_, __) => const AboutPage(),
    ),
  ],
);
