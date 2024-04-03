import 'package:cmp_walkthrough/ReuseableWidgets/my_button.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(dim.width * 0.04),
        child: Column(
          children: [
            const Spacer(),
            Container(
                height: dim.height * 0.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Total Value : ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '\$0.00',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                  ],
                )),
            SizedBox(
              height: dim.height * 0.03,
            ),
            myButton(
                height: dim.height * 0.06,
                ontap: null,
                text: 'Proceed To Shipping',
                width: dim.width * 0.6),
            SizedBox(
              height: dim.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
