import 'package:flutter/material.dart';
import 'package:tasktugas_clone/core.dart';
import 'package:tasktugas_clone/module/auth/view/login_view.dart';

import '../view/sign_up_view.dart';

class SignUpController extends State<SignUpView> {
  static late SignUpController instance;
  late SignUpView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  bool isPasswordVisible = true;
  togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    setState(() {});
  }

  bool isRePasswordVisible = true;
  toggleRePasswordVisibility() {
    isRePasswordVisible = !isRePasswordVisible;
    setState(() {});
  }
}
