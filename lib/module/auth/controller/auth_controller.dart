import 'package:flutter/material.dart';
import 'package:tasktugas_clone/core.dart';
import '../view/auth_view.dart';

class AuthController extends State<AuthView> {
  static late AuthController instance;
  late AuthView view;

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
