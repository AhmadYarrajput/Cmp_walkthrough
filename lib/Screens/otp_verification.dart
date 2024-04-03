import 'package:cmp_walkthrough/ReuseableWidgets/my_button.dart';
import 'package:cmp_walkthrough/Screens/name_setup.dart';
import 'package:flutter/material.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({super.key});

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late FocusNode _focusNode1, _focusNode2, _focusNode3, _focusNode4;

  @override
  void initState() {
    super.initState();
    _focusNode1 = FocusNode();
    _focusNode2 = FocusNode();
    _focusNode3 = FocusNode();
    _focusNode4 = FocusNode();
  }

  @override
  void dispose() {
    _focusNode1.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();
    _focusNode4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: dim.height * 0.02),
              const Center(
                child: Text(
                  'We have sent a verification code to',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: dim.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '+92-*********',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: dim.width * 0.02),
                  const CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 13,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(height: dim.height * 0.12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: dim.height * 0.04,
                    width: dim.width * 0.15,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      maxLength: 1,
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          _focusNode2.requestFocus();
                        }
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter code';
                        }
                        return null;
                      },
                      focusNode: _focusNode1,
                      decoration: const InputDecoration(counterText: ''),
                    ),
                  ),
                  SizedBox(width: dim.width * 0.05),
                  SizedBox(
                    height: dim.height * 0.04,
                    width: dim.width * 0.15,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      maxLength: 1,
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          _focusNode3.requestFocus();
                        }
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter code';
                        }
                        return null;
                      },
                      focusNode: _focusNode2,
                      decoration: const InputDecoration(counterText: ''),
                    ),
                  ),
                  SizedBox(width: dim.width * 0.05),
                  SizedBox(
                    height: dim.height * 0.04,
                    width: dim.width * 0.15,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      maxLength: 1,
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          _focusNode4.requestFocus();
                        }
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter code';
                        }
                        return null;
                      },
                      focusNode: _focusNode3,
                      decoration: const InputDecoration(counterText: ''),
                    ),
                  ),
                  SizedBox(width: dim.width * 0.05),
                  SizedBox(
                    height: dim.height * 0.04,
                    width: dim.width * 0.15,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      maxLength: 1,
                      onChanged: (value) {
                        if (value.isNotEmpty) {}
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter code';
                        }
                        return null;
                      },
                      focusNode: _focusNode4,
                      decoration: const InputDecoration(counterText: ''),
                    ),
                  ),
                ],
              ),
              SizedBox(height: dim.height * 0.03),
              myButton(
                height: dim.height * 0.07,
                width: dim.width * 0.85,
                text: 'Submit',
                ontap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NameSetup()),
                    );
                  }
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Didn't receive code?",
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Resend Again',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
