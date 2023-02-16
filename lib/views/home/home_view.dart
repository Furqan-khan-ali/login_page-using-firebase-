import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stack_rev/views/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel>{
  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body:Center(
        child: Text('MY home page'),
      )

    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) {
    return HomeViewModel();
  }

}