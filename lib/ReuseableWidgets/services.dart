import 'package:flutter/material.dart';

services(
    {conHeight, conWidth, conMargin, clmPadding, height, imgHeight, imgWidth}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: List.generate(
        4,
        (index) => Container(
          margin: EdgeInsets.all(conMargin),
          height: conHeight,
          width: conWidth,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(blurStyle: BlurStyle.outer, blurRadius: 2)
              ]),
          child: Padding(
            padding: EdgeInsets.all(clmPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height),
                Center(
                    child: SizedBox(
                        height: imgHeight,
                        width: imgWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMvIXZHrxNcWlg12Q-5dMFPYmu_55kHUl0XA&usqp=CAU',
                            fit: BoxFit.fitWidth,
                          ),
                        ))),
                SizedBox(height: height),
                const Row(
                  children: [
                    Icon(
                      Icons.blur_circular,
                      size: 33,
                      color: Colors.deepPurple,
                    ),
                    Text(
                      'Signature',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.bolt,
                      size: 20,
                      color: Colors.deepPurple,
                    ),
                    Text(
                      'High Quality Disposable Cutlery',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.bolt,
                      size: 20,
                      color: Colors.deepPurple,
                    ),
                    Text(
                      'Elegant Decorations & Table Settings',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.bolt,
                      size: 20,
                      color: Colors.deepPurple,
                    ),
                    Text(
                      'Served by Waitstadd',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.bolt,
                      size: 20,
                      color: Colors.deepPurple,
                    ),
                    Text(
                      'Best for Weddings',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const Spacer(),
                const Center(
                  child: Text(
                    'Know More',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w800),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
