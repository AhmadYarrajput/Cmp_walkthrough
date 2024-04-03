import 'package:flutter/material.dart';

howItWorkImage() {
  return Row(
    children: [
      SizedBox(
          height: 130,
          child: Image.asset('asset/images/Healthyoptionspana.png')),
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Customize Menu',
            style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.w600),
          ),
          Text(
            'Select items for a single event\nor multiple events',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
          )
        ],
      )
    ],
  );
}

howItWorkText() {
  return Row(
    children: [
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose Services',
            style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.w600),
          ),
          Text(
            'Select the type of services\nfrom varying cutlery, mode of\nserving options, & more',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
          )
        ],
      ),
      SizedBox(
          height: 130,
          child: Image.asset('asset/images/Healthyoptionspana.png')),
    ],
  );
}
