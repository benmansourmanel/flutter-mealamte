import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/routes.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Image.asset(
            "assets/images/back_icon.png",
            scale: 2.2,
          ),
        ),
      ),
      body: Stack(children: [
        Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xffEBF8EE),
                  radius: 36,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      "assets/images/app_logo.png",
                      scale: 4.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: const Text(
                    "Enter your mobile number",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  child: const Text(
                    "We will send you a verification code",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff979899)),
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  child: TextField(
                      textAlign: TextAlign.center,
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "8786545678",
                        hintStyle: TextStyle(
                            fontSize: 24,
                            color: Color(0xffE0E0E0),
                            fontWeight: FontWeight.bold),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        prefix: Text(
                          "+91",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.dashboardRoute);
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      textStyle:
                          const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      shape: const StadiumBorder(),
                      backgroundColor: const Color(0xff23AA49),
                    ),
                    child: const Text("Continue")),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text:
                          "By clicking on “Continue” you are agreeing to our ",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xffA9A9AA),
                          fontSize: 12),
                      children: <TextSpan>[
                        TextSpan(
                            text: "terms of use",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff5D5FEF))),
                      ],
                    ),
                  )),
            ],
          ),
        )
      ]),
    );
  }
}
