import 'dart:io';

import 'package:cmp_walkthrough/Controller/favourite_controller.dart';
import 'package:cmp_walkthrough/ReuseableWidgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  MainController controller = Get.put(MainController());
  File? _image;
  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    final imageTemporary = File(image.path);
    setState(
      () {
        _image = imageTemporary;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(dim.width * 0.04),
        child: Obx(
          () => Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      getImage();
                    },
                    child: CircleAvatar(
                      radius: 50,
                      child: _image != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.file(
                                _image!,
                                height: 250,
                                width: 340,
                                fit: BoxFit.cover,
                              ),
                            )
                          : const Icon(
                              Icons.person,
                              size: 30,
                              color: Colors.deepPurple,
                            ),
                    ),
                  ),
                  SizedBox(
                    width: dim.width * 0.1,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Phone # : 0305*****23',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w300),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: dim.height * 0.08),
              Expanded(
                child: ListView.builder(
                  itemCount: controller.profileOptions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: () {},
                      leading: controller.profileIcons[index],
                      title: Text(controller.profileOptions[index]),
                    );
                  },
                ),
              ),
              myButton(
                  height: dim.height * 0.06,
                  width: dim.width * 0.4,
                  ontap: () {},
                  text: 'Logout')
            ],
          ),
        ),
      ),
    );
  }
}
