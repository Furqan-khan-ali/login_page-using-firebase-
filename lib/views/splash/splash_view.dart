import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:stack_rev/views/splash/splash_view_model.dart';
import 'package:stacked/stacked.dart';

class SplashView extends ViewModelBuilderWidget<SplashViewModel>{
  @override
  Widget builder(BuildContext context, SplashViewModel viewModel, Widget? child) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomCenter,
              colors: [Colors.blueGrey,Colors.lightBlue]
              )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Spl@sh Screen',style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ],
        ),
      ),

    );
  }

  @override
  SplashViewModel viewModelBuilder(BuildContext context) {
    return SplashViewModel(context);
  }
  @override
  void onViewModelReady(SplashViewModel viewModel) {
    // TODO: implement onViewModelReady
    viewModel.init();
    //viewModel.testt();
  }

}