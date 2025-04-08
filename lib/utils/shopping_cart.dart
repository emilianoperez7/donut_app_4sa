import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  final int itemCount;
  final double totalPrice;

  const ShoppingCart({
    super.key,
    required this.itemCount,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$itemCount Items | \$$totalPrice',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                  Text('Delivery Charges Included')
                ],
              )),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: const Text(
              'View Cart',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
