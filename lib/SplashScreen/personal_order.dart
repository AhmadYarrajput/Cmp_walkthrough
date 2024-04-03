import 'package:cmp_walkthrough/Screens/login_signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalOrderExecutive extends StatelessWidget {
  const PersonalOrderExecutive({super.key});

  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(dim.height * 0.02),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: dim.height * 0.05),
                Image.asset('asset/images/Onboarding lustration.png'),
                SizedBox(height: dim.height * 0.03),
                const Text(
                  'Personal Order Executive',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: dim.height * 0.03),
                const Center(
                  child: Text(
                    '  Embark on a personalized culinary journey\n   with our dedicated one-to-one customer\n       support, ensuring a seamless and\n   satisfying experience every step of the',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'way',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(height: dim.height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: dim.height * 0.015,
                      width: dim.width * 0.10,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 231, 229, 229),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(width: dim.width * 0.02),
                    Container(
                      height: dim.height * 0.015,
                      width: dim.width * 0.10,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 231, 229, 229),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(width: dim.width * 0.02),
                    Container(
                      height: dim.height * 0.015,
                      width: dim.width * 0.10,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
                SizedBox(height: dim.height * 0.05),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const LoginSignupPage());
                  },
                  child: Container(
                    height: dim.height * 0.07,
                    width: dim.width * 0.45,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 240, 215, 245),
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: EdgeInsets.all(dim.width * 0.03),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Get Started',
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.deepPurple,
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
