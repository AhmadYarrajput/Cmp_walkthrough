import 'package:cmp_walkthrough/SplashScreen/exquisite_catering.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateYourPlate extends StatelessWidget {
  const CreateYourPlate({super.key});

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
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: dim.height * 0.03,
                    width: dim.width * 0.15,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 232, 190, 240),
                        borderRadius: BorderRadius.circular(6)),
                    child: Center(
                        child: GestureDetector(
                      onTap: () {
                        Get.to(() => const ExquisiteCatering());
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                    )),
                  ),
                ),
                SizedBox(height: dim.height * 0.1),
                Image.asset('asset/images/plate.png'),
                SizedBox(height: dim.height * 0.03),
                const Text(
                  'Create Your Own Plate',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: dim.height * 0.03),
                const Center(
                  child: Text(
                    '  Create unforgettable memories with our\n   unique feature to curate your favourite\ncuisines and food, tailored to your special',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'occasion',
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
                          color: Colors.deepPurple,
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
                          color: const Color.fromARGB(255, 231, 229, 229),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
                SizedBox(height: dim.height * 0.05),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const ExquisiteCatering());
                  },
                  child: const CircleAvatar(
                    radius: 35,
                    backgroundColor: Color.fromARGB(255, 232, 190, 240),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.deepPurple,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30,
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
