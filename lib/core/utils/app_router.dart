import 'package:go_router/go_router.dart';
import 'package:qizz_app/features/home/presentation/screens/catigory_screen.dart';
import 'package:qizz_app/features/home/presentation/widgets/home_page_body.dart';

import 'package:qizz_app/views/splash_screen_view.dart';

import '../../features/home/presentation/screens/login_screen_view.dart';

// GoRouter configuration
abstract class AppRouter
{
  static const kLoginScreen= '/LoginScreen';
  static const kCategoryScreen= '/CategoryScreen';
  static const kMyHomePageBody= '/MyHomePageBody';
  static const kQuizScreen= '/QuizScreen';
  static const kResultScreen= '/ResultScreen';

  static final router = GoRouter(

    routes: [
      // GoRoute(
      //   path:kCategoryScreen,
      //   builder: (context, state) =>  CategoryScreen(),
      // ),
      // GoRoute(
      //   path:kQuizScreen,
      //   builder: (context, state) =>   QuizScreen(categoryMap: {},),
      // ),
      // GoRoute(
      //   path:kResultScreen,
      //   builder: (context, state) =>   ResultScreen(),
      // ),
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreenView(),
      ),
      GoRoute(
        path: '/MyHomePageBody',
        builder: (context, state) => const MyHomePageBody(),
      ),
      GoRoute(
        path: kLoginScreen,
        builder: (context, state) =>  const LoginScreenView(),
      ),
    ],
  );
}