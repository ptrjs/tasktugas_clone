import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tasktugas_clone/core.dart';
import 'package:tasktugas_clone/module/auth/view/login_view.dart';
import 'package:tasktugas_clone/module/auth/view/sign_up_view.dart';
import 'package:tasktugas_clone/shared/theme/theme_config.dart';
import '../controller/auth_controller.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  Widget build(context, AuthController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 200,
          bottom: TabBar(
            indicatorColor: secondaryColor,
            tabs: [
              Tab(
                text: "Login",
              ),
              Tab(
                text: "Sign Up",
              ),
            ],
          ),
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    MdiIcons.triangle,
                    size: 24.0,
                    color: primaryColor,
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    "Tasktugas",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: secondaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32.0,
              ),
              Column(
                children: [
                  Text(
                    "Welcome to Tasktugas",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Sign up or login bellow to manage your",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    "project, task, and productivity",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            LoginView(),
            SignUpView(),
          ],
        ),
      ),
    );
  }

  @override
  State<AuthView> createState() => AuthController();
}
