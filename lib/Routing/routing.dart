import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_weather_app/get_started.dart';
import 'package:go_router/go_router.dart';
import '../homepage.dart';


// GoRouter configuration
final goRouuter=Provider<GoRouter>((ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => GetStarted(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => HomePage(),
      ),
    ],
  );
});
