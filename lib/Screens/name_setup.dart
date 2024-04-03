import 'package:cmp_walkthrough/Controller/favourite_controller.dart';
import 'package:cmp_walkthrough/NavigationBar/curved_bottom_nav_bar.dart';
import 'package:cmp_walkthrough/ReuseableWidgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NameSetup extends StatefulWidget {
  const NameSetup({super.key});

  @override
  State<NameSetup> createState() => _NameSetupState();
}

class _NameSetupState extends State<NameSetup> {
  MainController controller = Get.put(MainController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final regExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(dim.height * 0.02),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Just a step away !',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: dim.height * 0.04),
              SizedBox(
                width: dim.width * 0.95,
                height: dim.height * 0.06,
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your name';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.deepPurple)),
                    hintText: '   Full Name*',
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                  ),
                ),
              ),
              SizedBox(height: dim.height * 0.02),
              SizedBox(
                width: dim.width * 0.95,
                height: dim.height * 0.06,
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your email';
                    } else if (!regExp.hasMatch(value)) {
                      return 'Enter a valid email address';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.deepPurple)),
                    hintText: '   Email ID*',
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                  ),
                ),
              ),
              const Spacer(),
              myButton(
                height: dim.height * 0.07,
                width: dim.width * 0.85,
                text: "Let's Start",
                ontap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyBottomNavigationBar()),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
