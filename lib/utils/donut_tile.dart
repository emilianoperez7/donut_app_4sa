import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final String donutShop;
  //dyanamic porque será de tipo color
  final dynamic donutColor;
  final String imageName;
  final ValueChanged<double> onAdd;

  const DonutTile(
      {super.key,
      required this.donutFlavor,
      required this.donutPrice,
      required this.donutColor,
      required this.imageName,
      required this.donutShop,
      required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          //color: donutColor[50],
          decoration: BoxDecoration(
            color: donutColor[50],
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
                      color: donutColor[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          topRight: Radius.circular(24)),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                    child: Text(
                      '\$$donutPrice',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: donutColor[800]),
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
              Text(donutFlavor,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black)),
              Text(donutShop,
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
                          double price = double.tryParse(donutPrice) ?? 0.0;
                          onAdd(price);
                        },
                        child: Text('Add',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: donutColor,
                                decoration: TextDecoration.underline,
                                decorationColor: donutColor))),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
