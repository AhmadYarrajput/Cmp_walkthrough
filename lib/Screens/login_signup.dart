import 'package:cmp_walkthrough/ReuseableWidgets/my_button.dart';
import 'package:cmp_walkthrough/Screens/otp_verification.dart';
import 'package:flutter/material.dart';

class LoginSignupPage extends StatefulWidget {
  const LoginSignupPage({super.key});

  @override
  State<LoginSignupPage> createState() => _LoginSignupPageState();
}

class _LoginSignupPageState extends State<LoginSignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Image.asset('asset/images/Vector.png'),
                Positioned(
                    left: dim.width * 0.32,
                    top: dim.height * 0.05,
                    child: Image.asset(
                      'asset/images/logo.png',
                      scale: 0.9,
                    )),
                Positioned(
                  left: dim.width * 0.3,
                  top: dim.height * 0.18,
                  child: const Text(
                    'Craft My Plate',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                )
              ]),
              Padding(
                padding: EdgeInsets.only(
                    top: dim.height * 0.04, left: dim.height * 0.03),
                child: const Text(
                  'Login or Signup',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: dim.height * 0.03),
              SizedBox(
                width: dim.width * 0.95,
                height: dim.height * 0.09,
                child: Padding(
                  padding: EdgeInsets.only(left: dim.height * 0.03),
                  child: TextFormField(
                    maxLength: 11,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Mobile Number';
                      } else if (value.length < 11 || value.length > 11) {
                        return 'Enter only 11 digits';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: InputBorder.none,

                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: Colors.deepPurple)),
                      hintText: '   Enter Phone Number',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ),
              ),
              SizedBox(height: dim.height * 0.03),
              myButton(
                height: dim.height * 0.07,
                width: dim.width * 0.85,
                text: 'Continue',
                ontap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OTPVerification()),
                    );
                  }
                },
              ),
              SizedBox(height: dim.height * 0.30),
              const Center(
                  child: Text(
                'By continuing, you agree to our',
                style: TextStyle(color: Colors.deepPurple, fontSize: 17),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Terms of Service',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.deepPurple,
                        fontSize: 17),
                  ),
                  SizedBox(width: dim.width * 0.02),
                  const Text(
                    'Privacy Policy',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.deepPurple,
                        fontSize: 17),
                  ),
                ],
              ),
              SizedBox(height: dim.height * 0.01),
              Center(
                child: Container(
                  height: dim.height * 0.009,
                  width: dim.width * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
