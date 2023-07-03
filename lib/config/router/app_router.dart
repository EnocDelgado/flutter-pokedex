import 'package:go_router/go_router.dart';
import 'package:pokedex/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/home/0',
  routes: [

    GoRoute(
      path: '/home/:page',
      name: HomeScreen.name,
      builder: (context, state) {

        final pageIndex = state.pathParameters['page'] ?? '0';

        return HomeScreen(pageIndex: int.parse( pageIndex.toString() ) );
      },
    ),

    // Redirect
    GoRoute(
      path: '/',
      redirect: (_, __) => 'home/0'
    )
  ]
);