import 'package:flutter/material.dart';

defaultMenu(
    {conHeight, conWidth, columnPadLeft, columnPadTop, height, text, onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: conHeight,
      width: conWidth,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(blurStyle: BlurStyle.outer, blurRadius: 2)
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: columnPadLeft, top: columnPadTop),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: height,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'asset/images/food.png',
                    scale: 9,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '3 starters',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text('3 maincourse',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      Text('3 desserts',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      Text('3 drinks',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                    ],
                  )
                ],
              ),
            ),
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
            const Text(
              "Starts at \$777",
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    ),
  );
}
