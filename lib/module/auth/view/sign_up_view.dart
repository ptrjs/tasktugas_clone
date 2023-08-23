// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:tasktugas_clone/module/auth/controller/signup_controller.dart';
import 'package:tasktugas_clone/module/auth/view/otp_view.dart';

import '../../../shared/theme/theme_config.dart';
import '../controller/auth_controller.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => SignUpController();

  Widget build(BuildContext context, SignUpController controller) {
    controller.view = this;
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                        ),
                        hintText: "Your name",
                      ),
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        hintText: "Enter your email",
                      ),
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      obscureText: controller.isPasswordVisible,
                      decoration: InputDecoration(
                          hintText: "Enter your password",
                          prefixIcon: const Icon(
                            Icons.lock,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.togglePasswordVisibility();
                            },
                            icon: Icon(
                              controller.isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          )),
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      obscureText: controller.isRePasswordVisible,
                      decoration: InputDecoration(
                          hintText: "Confirm your password",
                          prefixIcon: const Icon(
                            Icons.lock,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.toggleRePasswordVisibility();
                            },
                            icon: Icon(
                              controller.isRePasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          )),
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_box_rounded,
                          size: 16.0,
                          color: Colors.grey[600],
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          "At least 8 characters",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_box_rounded,
                          size: 16.0,
                          color: Colors.grey[600],
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          "At least 1 number",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_box_rounded,
                          size: 16.0,
                          color: Colors.grey[600],
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          "Both upper and lower case letters",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.check_box_outline_blank,
                          size: 16.0,
                          color: Colors.grey[600],
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Expanded(
                          child: Text(
                            "By agreeing to the terms and conditions, you are entering \ninto a legally binding contract with the service provider.",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                        ),
                        onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => OTPView()),
                        ),
                        child: Text("Sign up",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
