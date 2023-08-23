import 'package:flutter/material.dart';
import 'package:tasktugas_clone/core.dart';
import 'package:tasktugas_clone/module/auth/view/login_view.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

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
}
