import 'package:flutter/material.dart';

class PancakesTile extends StatelessWidget {
  final String pancakesFlavor;
  final String pancakesPrice;
  final String pancakesStore;
  //dyanamic porque será de tipo color
  final dynamic pancakesColor;
  final String imageName;
  final ValueChanged<double> onAdd;

  const PancakesTile({
    super.key,
    required this.pancakesFlavor,
    required this.pancakesPrice,
    required this.pancakesColor,
    required this.pancakesStore,
    required this.imageName,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          //color: donutColor[50],
          decoration: BoxDecoration(
            color: pancakesColor[50],
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
                      color: pancakesColor[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          topRight: Radius.circular(24)),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                    child: Text(
                      '\$$pancakesPrice',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: pancakesColor[800]),
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
              Text(pancakesFlavor,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black)),
              Text(pancakesStore,
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
                          double price = double.tryParse(pancakesPrice) ?? 0.0;
                          onAdd(price);
                        },
                        child: Text('Add',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: pancakesColor,
                                decoration: TextDecoration.underline,
                                decorationColor: pancakesColor))),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
