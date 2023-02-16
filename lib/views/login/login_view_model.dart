import 'package:flutter/cupertino.dart';
import 'package:stack_rev/base/app_setup.locator.dart';
import 'package:stack_rev/base/app_setup.router.dart';
import 'package:stack_rev/services/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel{

  final _authService = locator<AuthService>();

  TextEditingController emailFieldController = TextEditingController();
  TextEditingController passwordFieldController = TextEditingController();

  void onLoginTab(BuildContext formkacontext) async{
    if (!(Form.of(formkacontext)?.validate() ?? false)){
    return ;
      //Form.of(formkacontext)!.validate();
    }
   var res = await runBusyFuture(_authService.loginOrCreateUser(emailFieldController.text, passwordFieldController.text));

    if(res)
      {
        locator<NavigationService>().pushNamedAndRemoveUntil(Routes.homeView);
      }
  }

  String? email(String? value) {

    if(value!.isEmpty || value == null){
      return 'Please enter a email';
    }
    else if (!value.contains('@')){
      return 'Please enter a valid email';
    }

  }

  String? password(String? value) {
    if(value == null || value.isEmpty){
      return 'Please enter a password';
    }
    if (value.length < 5){
      return 'password must be more than 4 characters';
    }

  }
}