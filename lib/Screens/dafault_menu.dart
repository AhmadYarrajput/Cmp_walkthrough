import 'package:cmp_walkthrough/ReuseableWidgets/my_button.dart';
import 'package:flutter/material.dart';

class DefaultMenu extends StatefulWidget {
  const DefaultMenu({super.key});

  @override
  State<DefaultMenu> createState() => _DefaultMenuState();
}

class _DefaultMenuState extends State<DefaultMenu> {
  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Default Menu'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(dim.height * 0.02),
        child: Column(
          children: [
            Container(
              height: dim.height * 0.6,
              width: dim.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(blurStyle: BlurStyle.outer, blurRadius: 2)
                  ]),
              child: Padding(
                padding: EdgeInsets.only(
                    left: dim.width * 0.03, top: dim.height * 0.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Default Menu',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(height: dim.height * 0.01),
                    Center(
                      child: Image.asset(
                        'asset/images/food.png',
                        scale: 2,
                      ),
                    ),
                    const Text('3 starters',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            fontStyle: FontStyle.italic)),
                    const Text('3 maincourse',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            fontStyle: FontStyle.italic)),
                    const Text('3 desserts',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            fontStyle: FontStyle.italic)),
                    const Text('3 drinks',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            fontStyle: FontStyle.italic)),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                        Text('Min 800', style: TextStyle(color: Colors.grey))
                      ],
                    ),
                    const Spacer(),
                    const Center(
                      child: Text(
                        "Starts at \$777",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            myButton(
              height: dim.height * 0.07,
              width: dim.width * 0.85,
              text: "Buy",
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
