import 'package:cmp_walkthrough/ReuseableWidgets/my_button.dart';
import 'package:flutter/material.dart';

class CraftYourPlatter extends StatelessWidget {
  CraftYourPlatter({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Craft Your Platter'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(dim.height * 0.02),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Please Fill Details !',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: dim.height * 0.04),
                SizedBox(
                  width: dim.width * 0.95,
                  height: dim.height * 0.06,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your Name';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: Colors.deepPurple)),
                      hintText: 'Full Name',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ),
                SizedBox(height: dim.height * 0.04),
                SizedBox(
                  width: dim.width * 0.95,
                  height: dim.height * 0.06,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Quantity';
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
                      hintText: 'Type',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ),
                SizedBox(height: dim.height * 0.04),
                SizedBox(
                  width: dim.width * 0.95,
                  height: dim.height * 0.06,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter some text';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: Colors.deepPurple)),
                      hintText: 'Cold Drink',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ),
                SizedBox(height: dim.height * 0.04),
                SizedBox(
                  width: dim.width * 0.95,
                  height: dim.height * 0.06,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter some text';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: Colors.deepPurple)),
                      hintText: 'Cold Drink Type',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ),
                SizedBox(height: dim.height * 0.1),
                myButton(
                  height: dim.height * 0.07,
                  width: dim.width * 0.85,
                  text: "Create",
                  ontap: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
