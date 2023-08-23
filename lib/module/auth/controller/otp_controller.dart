import 'package:flutter/material.dart';

import 'package:tasktugas_clone/module/auth/view/otp_view.dart';

class OTPController extends State<OTPView> {
  static late OTPController instance;
  late OTPView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  int pinNumber = 0;
  bool isPinFilled = false;
  changeButton(int pinNumber) {
    if (pinNumber == 4) {
      isPinFilled = !isPinFilled;
      setState(() {});
    }
  }
}
