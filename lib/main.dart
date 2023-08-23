import 'package:tasktugas_clone/core.dart';
import 'package:tasktugas_clone/core.dart';
import 'package:flutter/material.dart';
import 'package:tasktugas_clone/module/auth/view/otp_view.dart';
import 'package:tasktugas_clone/shared/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      home: const AuthView(),
    );
  }
}
