import 'package:carousel_slider/carousel_slider.dart';
import 'package:cmp_walkthrough/Controller/favourite_controller.dart';
import 'package:cmp_walkthrough/Menu/default_menu.dart';
import 'package:cmp_walkthrough/Menu/platters_menu.dart';
import 'package:cmp_walkthrough/ReuseableWidgets/how_it_works.dart';
import 'package:cmp_walkthrough/Screens/craft_own_platter.dart';
import 'package:cmp_walkthrough/Screens/dafault_menu.dart';
import 'package:cmp_walkthrough/Screens/platters.dart';
import 'package:cmp_walkthrough/ReuseableWidgets/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  MainController controller = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;
    final List<Widget> imageSliders = controller.imgList
        .map((item) => Container(
              margin: EdgeInsets.all(dim.width * 0.005),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.network(item, fit: BoxFit.cover, width: 1000.0)),
            ))
        .toList();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(dim.height * 0.02),
          child: SingleChildScrollView(
            child: Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hi, Monica!',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Colors.deepPurple),
                  ),
                  SizedBox(height: dim.height * 0.01),
                  Row(
                    children: [
                      const Text(
                        'Current location',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: dim.width * 0.06),
                        child: const Icon(
                          Icons.play_circle_outline,
                          color: Colors.deepPurple,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.deepPurple,
                      ),
                      GestureDetector(
                        onTap: () {
                          _showCitiesDialog(context);
                        },
                        child: Text(
                          'Hyderabad',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'How it works?',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: dim.height * 0.04),
                  CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 1.9,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      viewportFraction: 0.95,
                      autoPlay: true,
                    ),
                    items: imageSliders,
                  ),
                  SizedBox(height: dim.height * 0.04),
                  SizedBox(
                    width: dim.width * 0.95,
                    height: dim.height * 0.06,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade100)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  const BorderSide(color: Colors.deepPurple)),
                          hintText: 'Search food or events',
                          suffixIcon: const Icon(Icons.search,
                              color: Colors.deepPurple)),
                    ),
                  ),
                  SizedBox(height: dim.height * 0.03),
                  const Text(
                    'Start crafting',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Colors.deepPurple),
                  ),
                  SizedBox(height: dim.height * 0.02),
                  Padding(
                    padding: EdgeInsets.all(dim.width * 0.003),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        platterStyle(
                            img:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMvIXZHrxNcWlg12Q-5dMFPYmu_55kHUl0XA&usqp=CAU',
                            name: 'Default Platters',
                            conHeight: dim.height * 0.17,
                            conWidth: dim.width * 0.44,
                            imgHeight: dim.height * 0.12,
                            height: dim.height * 0.01,
                            ontap: () {
                              Get.to(() => const Platters());
                            }),
                        platterStyle(
                            img:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ56O5NlJCFGlDyhUFZXCERaCQh896upSFMA&usqp=CAU',
                            name: 'Craft Your Own',
                            conHeight: dim.height * 0.17,
                            conWidth: dim.width * 0.44,
                            imgHeight: dim.height * 0.12,
                            height: dim.height * 0.01,
                            ontap: () {
                              Get.to(CraftYourPlatter());
                            }),
                      ],
                    ),
                  ),
                  SizedBox(height: dim.height * 0.05),
                  Padding(
                    padding: EdgeInsets.all(dim.width * 0.003),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        defaultMenu(
                            text: 'Default Menu 1',
                            conHeight: dim.height * 0.23,
                            conWidth: dim.width * 0.44,
                            columnPadLeft: dim.width * 0.03,
                            columnPadTop: dim.height * 0.01,
                            height: dim.height * 0.01,
                            onTap: () {
                              Get.to(const DefaultMenu());
                            }),
                        defaultMenu(
                            text: 'Default Menu 2',
                            conHeight: dim.height * 0.23,
                            conWidth: dim.width * 0.44,
                            columnPadLeft: dim.width * 0.03,
                            columnPadTop: dim.height * 0.01,
                            height: dim.height * 0.01,
                            onTap: () {
                              Get.to(const DefaultMenu());
                            }),
                      ],
                    ),
                  ),
                  SizedBox(height: dim.height * 0.02),
                  const Text(
                    'Top Categories',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: dim.height * 0.15,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.categoriesImg.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(dim.width * 0.01),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                                child: Image.asset(
                                  controller.categoriesImg[index],
                                ),
                              ),
                              SizedBox(
                                height: dim.height * 0.01,
                              ),
                              Text(
                                controller.categoryNames[index],
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Starters',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'More Starters',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.deepPurple),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.all(dim.width * 0.003),
                      child: Row(
                        children: List.generate(
                            4,
                            (index) => Container(
                                  margin: EdgeInsets.all(dim.width * 0.015),
                                  child: platterStyle(
                                      img: controller.imgList[index],
                                      name: controller.startersNames[index],
                                      conHeight: dim.height * 0.17,
                                      conWidth: dim.width * 0.44,
                                      imgHeight: dim.height * 0.12,
                                      height: dim.height * 0.01),
                                )),
                      ),
                    ),
                  ),
                  SizedBox(height: dim.height * 0.02),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Main Course',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'More Main Courses',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.deepPurple),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.all(dim.width * 0.003),
                      child: Row(
                        children: List.generate(
                            4,
                            (index) => Container(
                                  margin: EdgeInsets.all(dim.width * 0.015),
                                  child: platterStyle(
                                      img: controller.imgList[index],
                                      name: controller.mainCourseNames[index],
                                      conHeight: dim.height * 0.17,
                                      conWidth: dim.width * 0.44,
                                      imgHeight: dim.height * 0.12,
                                      height: dim.height * 0.01),
                                )),
                      ),
                    ),
                  ),
                  SizedBox(height: dim.height * 0.02),
                  const Text(
                    'Services',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: dim.height * 0.02),
                  services(
                    conHeight: dim.height * 0.39,
                    conWidth: dim.width * 0.75,
                    conMargin: dim.width * 0.015,
                    clmPadding: dim.width * 0.03,
                    height: dim.height * 0.02,
                    imgHeight: dim.height * 0.15,
                    imgWidth: dim.width * 0.68,
                  ),
                  SizedBox(height: dim.height * 0.02),
                  const Text(
                    'How does it work ?',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: dim.height * 0.02),
                  howItWorkImage(),
                  howItWorkText(),
                  howItWorkImage(),
                  howItWorkText(),
                  howItWorkImage(),
                  howItWorkText(),
                  SizedBox(height: dim.height * 0.1),
                  Container(
                    height: dim.height * 0.15,
                    width: dim.width,
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(color: Colors.amber),
                    child: const Text(
                      'Delicious food with\nprofessional service !',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: dim.height * 0.06)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void _showCitiesDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Cities of Pakistan'),
        content: Column(
          children: [
            Text('City 1'),
            Text('City 2'),
            Text('City 3'),
            // Add more cities as needed
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          ),
        ],
      );
    },
  );
}
