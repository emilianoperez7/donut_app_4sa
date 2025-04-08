import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavor;
  final String burgerPrice;
  final String burgerShop;
  //dyanamic porque será de tipo color
  final dynamic burgerColor;
  final String imageName;
  final ValueChanged<double> onAdd;

  const BurgerTile(
      {super.key,
      required this.burgerFlavor,
      required this.burgerPrice,
      required this.burgerColor,
      required this.imageName,
      required this.burgerShop,
      required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          //color: donutColor[50],
          decoration: BoxDecoration(
            color: burgerColor[50],
            //Esquinas redondeadas
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: burgerColor[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          topRight: Radius.circular(24)),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                    child: Text(
                      '\$$burgerPrice',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: burgerColor[800]),
                    ),
                  ),
                ],
              ),
              //Donut price
              SizedBox(
                height: 120,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Image.asset(imageName),
                ),
              ),
              //Donut flavor
              Text(burgerFlavor,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black)),
              Text(burgerShop,
                  style: TextStyle(fontSize: 13, color: Colors.blueGrey)),
              //Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border_outlined),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TextButton(
                        onPressed: () {
                          double price = double.tryParse(burgerPrice) ?? 0.0;
                          onAdd(price);
                        },
                        child: Text('Add',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: burgerColor,
                                decoration: TextDecoration.underline,
                                decorationColor: burgerColor))),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
