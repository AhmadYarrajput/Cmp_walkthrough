import 'package:flutter/material.dart';

platterStyle({img, name, conHeight, conWidth, imgHeight, height,ontap}) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      height: conHeight,
      width: conWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(blurStyle: BlurStyle.outer, blurRadius: 2)
          ]),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.network(
              img,
              fit: BoxFit.cover,
              height: imgHeight,
            ),
          ),
          SizedBox(height: height),
          Center(
              child: Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ))
        ],
      ),
    ),
  );
}
