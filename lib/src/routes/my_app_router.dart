import 'package:class_activity/src/feactures/screens/home_screen.dart';
import 'package:class_activity/src/feactures/screens/musica_pop.dart';
import 'package:class_activity/src/feactures/screens/musical_genres.dart';
import 'package:go_router/go_router.dart';

class MyAppRouter {
  static GoRouter router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/mge', builder: (context, state) => const MusicalGenres()),
    GoRoute(path: '/pop', builder: (context, state) => const MusicaPop()),
  ]);
}
