import 'package:go_router/go_router.dart';
import '../constant.dart';
import '../widget/favorites.dart';
import '../widget/home.dart';

GoRouter router() {
  return GoRouter(
      initialLocation: '/home',
      routes: [
        GoRoute(
          path: '/home',
          builder: ((context, state) => const HomePage()),
        ),
        GoRoute(
          path: favorites,
          builder: ((ct,state)=> const Favorites()),
        ),
      ]
  );
}