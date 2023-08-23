// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pinput/pinput.dart';
import 'package:tasktugas_clone/core.dart';
import 'package:tasktugas_clone/module/auth/controller/otp_controller.dart';
import '../../../shared/theme/theme_config.dart';

class OTPView extends StatefulWidget {
  OTPView({Key? key}) : super(key: key);

  @override
  State<OTPView> createState() => OTPController();

  final defaultPinTheme = PinTheme(
    width: 70,
    height: 50,
    textStyle: TextStyle(
      fontSize: 22,
      color: Colors.black,
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.grey,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(8.0),
      ),
    ),
  );

  Widget build(BuildContext context, OTPController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 200,
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
                SizedBox(
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
            SizedBox(
              height: 32.0,
            ),
            Column(
              children: [
                Text(
                  "Enter Verification Code",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                RichText(
                  text: TextSpan(
                    text: '',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'We have sent a code to ',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            decoration: TextDecoration.none,
                            color: Colors.grey[600],
                          )),
                      TextSpan(
                        text: 'admin@gmail.com',
                        style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.none,
                          color: Colors.grey[900],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Pinput(
                length: 4,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(
                      color: secondaryColor,
                    ),
                  ),
                ),
                onCompleted: (pin) => controller.changeButton(pin.length),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: controller.isPinFilled
                              ? primaryColor
                              : Colors.grey[600],
                          disabledBackgroundColor: controller.isPinFilled
                              ? primaryColor
                              : Colors.grey[600],
                        ),
                        onPressed: controller.isPinFilled
                            ? () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DashboardView()),
                                )
                            : null,
                        child: Text("Verify Now",
                            style: TextStyle(
                              color: controller.isPinFilled
                                  ? Colors.white
                                  : Colors.grey[300],
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    RichText(
                      text: TextSpan(
                        text: '',
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Didn\u0027t you receive any code? ',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              color: Colors.grey[600],
                            ),
                          ),
                          TextSpan(
                            text: 'Resend Code',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                              color: secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      /*
      bottomNavigationBar: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                  ),
                  onPressed: () {},
                  child: Text("Verify Now",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              RichText(
                text: TextSpan(
                  text: '',
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Didn\u0027t you receive any code? ',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        decoration: TextDecoration.none,
                        color: Colors.grey[600],
                      ),
                    ),
                    TextSpan(
                      text: 'Resend Code',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                        color: secondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    */
    );
  }
}
