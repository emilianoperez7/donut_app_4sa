import 'package:donut_app_4sa/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  final Function(double) onAdd;
  BurgerTab({super.key, required this.onAdd});
  //list of burgers
  final List<List<dynamic>> burgersOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    [
      "Americana",
      "Burger y Más",
      "89",
      Colors.orange,
      "lib/images/americana_burger.png"
    ],
    [
      "Con Queso",
      "Fuego y Sabor",
      "120",
      Colors.yellow,
      "lib/images/conqueso_burger.png"
    ],
    [
      "Con Tocino",
      "Grill House",
      "125",
      Colors.pink,
      "lib/images/contocino_burger.png"
    ],
    [
      "Doble",
      "Hamburguesas 4SA",
      "149",
      Colors.red,
      "lib/images/doble_burger.png"
    ],
    ["BBQ", "Don Burger", "139", Colors.pink, "lib/images/bbq_burger.png"],
    [
      "Vegetariana",
      "Burger Grill",
      "129",
      Colors.green,
      "lib/images/vegeteriana_burger.png"
    ],
    [
      "De Pollo",
      "King Chicken",
      "129",
      Colors.grey,
      "lib/images/chicken_burger.png"
    ],
    [
      "Italiana",
      "Toscana",
      "135",
      Colors.pink,
      "lib/images/italiana_burger.png"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Prepa 1
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //Número de columnas
          crossAxisCount: 2,
          //Proporción entre ancho y alto
          childAspectRatio: 1 / 1.5),
      //¿Cuántos elementos va a tener?
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      //¿Qué elemento se construirá?
      itemBuilder: (context, index) {
        return BurgerTile(
            burgerFlavor: burgersOnSale[index][0],
            burgerShop: burgersOnSale[index][1],
            burgerPrice: burgersOnSale[index][2],
            burgerColor: burgersOnSale[index][3],
            imageName: burgersOnSale[index][4],
            onAdd: onAdd);
      },
    );
  }
}
