import 'package:compound/ui/shared/ui_helpers.dart';
import 'package:compound/ui/views/signup_view.dart';
import 'package:compound/ui/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:compound/viewmodels/login_view_model.dart';

class LoginView extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  Widget horizontalLine() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: 100,
          height: 1.0,
          color: Colors.black26.withOpacity(.2),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<LoginViewModel>.withConsumer(
        viewModel: LoginViewModel(),
        builder: (context, model, child) => Scaffold(
            backgroundColor: Colors.white,
            resizeToAvoidBottomPadding: false,
            body: Stack(fit: StackFit.expand, children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Image.asset('assets/images/image_01.png'),
                  ),
                  Expanded(child: Container()),
                  Image.asset('assets/images/image_02.png'),
                ],
              ),
              SingleChildScrollView(
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 20.0, right: 20.0, top: 60.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[],
                          ),
                          SizedBox(
                            height: 200,
                          ),
                          InputField(
                            placeholder: 'Email',
                            controller: emailController,
                          ),
                          verticalSpaceSmall,
                          InputField(
                            placeholder: 'Password',
                            password: true,
                            controller: passwordController,
                          ),
                          verticalSpaceMedium,
                          SizedBox(
                            height: 14,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              InkWell(
                                child: Container(
                                  width: 200,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color(0xFF17ead9),
                                        Color(0xFF6078ea)
                                      ]),
                                      borderRadius: BorderRadius.circular(6.0),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xFF6078ea)
                                                .withOpacity(.3),
                                            offset: Offset(0.0, 8.0),
                                            blurRadius: 8.0)
                                      ]),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {
                                        model.login(
                                          email: emailController.text,
                                          password: passwordController.text,
                                        );
                                      },
                                      child: Center(
                                        child: Text("Login",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                letterSpacing: 1.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              horizontalLine(),
                              Text(
                                "Socal Sign",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              horizontalLine(),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "New User? ",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUpView()));
                                },
                                child: Text("SignUp",
                                    style: TextStyle(
                                      color: Color(0xFF5d74e3),
                                      fontSize: 16.0,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      )))
            ])));
  }
}
