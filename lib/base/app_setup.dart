
import 'package:stack_rev/services/auth_service.dart';
import 'package:stack_rev/views/home/home_view.dart';
import 'package:stack_rev/views/login/login_view.dart';
import 'package:stack_rev/views/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes:
      [
        MaterialRoute(page: SplashView, initial: true),
        MaterialRoute(page: LoginView),
        MaterialRoute(page: HomeView)
      ],
      dependencies:
      [
        LazySingleton(classType: AuthService),
        Singleton(classType: NavigationService)
      ]
    )

class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}