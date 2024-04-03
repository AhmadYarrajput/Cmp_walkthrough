import 'package:cmp_walkthrough/Controller/favourite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Starters extends StatefulWidget {
  const Starters({super.key});

  @override
  State<Starters> createState() => _StartersState();
}

class _StartersState extends State<Starters> {
  MainController controller = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Starters'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(dim.width * 0.02),
        child: ListView.builder(
          itemCount: controller.plattersList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(dim.height * 0.006),
              height: dim.height * 0.1,
              width: dim.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(controller.plattersList[index]),
                  ),
                  title: Text(
                    controller.plattersNames[index],
                    style: const TextStyle(fontSize: 15),
                  ),
                  trailing: Obx(
                    () => Icon(
                      Icons.favorite,
                      color: controller.tempPlatterList.contains(
                              controller.plattersNames[index].toString())
                          ? Colors.red
                          : Colors.grey.shade300,
                    ),
                  ),
                  subtitle: const Text('\$200'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void showSnackBar(String message, color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Text(message),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
