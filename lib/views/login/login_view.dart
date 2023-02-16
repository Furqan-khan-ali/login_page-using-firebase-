import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stack_rev/views/login/login_view_model.dart';
import 'package:stacked/stacked.dart';

class LoginView extends ViewModelBuilderWidget<LoginViewModel> {
  @override
  Widget builder(BuildContext context, LoginViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(begin: Alignment.topCenter,end: Alignment.center,
              colors: [Colors.blue,Colors.white])
        ),
        child: Form(
          child: Builder(
            builder: (formkacontext) {
              return Column(
                children: [

                  Container(
                    margin: EdgeInsets.only(left: 4,top: 125,right: 4),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Colors.white10
                        ,borderRadius: BorderRadius.all(Radius.circular(5)), border: Border.all(color: Color(0xFF5D5D67)),

                    ),
                    child: TextFormField(
                      controller: viewModel.emailFieldController,
                      validator: viewModel.email,
                      style: TextStyle(color: Colors.black,),
                      decoration: InputDecoration(hintText: 'User Name',hintStyle: TextStyle(
                        color: Color(0xFF8F8F9e),fontSize: 15),
                      border: InputBorder.none),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 4,top: 10,right: 4),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Colors.white10
                        , borderRadius: BorderRadius.all(Radius.circular(5)), border: Border.all(color: Color(0xFF5D5D67))
                    ),
                    child: TextFormField(
                      controller: viewModel.passwordFieldController,
                      validator: viewModel.password,
                      obscureText: true,
                      style: TextStyle(color: Colors.black,),
                      decoration: InputDecoration(hintText: 'Password',hintStyle: TextStyle(
                        color: Color(0xFF8F8F9E),fontSize: 15),
                          border: InputBorder.none),
                    ),
                  ),

                  SizedBox(height:20,),

                  ElevatedButton(onPressed:() => viewModel.onLoginTab(formkacontext), child: Text('Login'))
                ],
              );
            }
          ),
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(BuildContext context) {
    return LoginViewModel();
  }

  @override
  void onViewModelReady(LoginViewModel viewModel) {

  }
}