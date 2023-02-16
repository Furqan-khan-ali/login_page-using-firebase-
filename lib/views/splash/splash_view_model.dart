import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stack_rev/views/login/login_view.dart';
import 'package:stacked/stacked.dart';

class SplashViewModel extends BaseViewModel{
  final BuildContext context;

  SplashViewModel(this.context);

  void init()  async{

  await Future.delayed(Duration(seconds: 4));
  Navigator.pushAndRemoveUntil(context,
      MaterialPageRoute(builder: (_)=> LoginView()),(route)=> false);

  }

}