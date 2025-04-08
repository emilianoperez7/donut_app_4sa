import 'package:donut_app_4sa/utils/pancakes_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  final Function(double) onAdd;
  PancakesTab({super.key, required this.onAdd});
  //list of burgers
  final List<List<dynamic>> pancakesOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    [
      "Clásico con Miel",
      "Pancake World",
      "69",
      Colors.yellow,
      "lib/images/clasicoconmiel_pancakes.png"
    ],
    [
      "Choco-Fresas",
      "La Pancakería",
      "99",
      Colors.red,
      "lib/images/chocolateyfresas_pancakes.png"
    ],
    [
      "Hershey´s",
      "IHOP",
      "109",
      Colors.brown,
      "lib/images/rellenoschocolate_pancakes.png"
    ],
    [
      "Fresa y Crema",
      "Dulce Pancake",
      "95",
      Colors.pink,
      "lib/images/frambuesaycrema_pancakes.png"
    ],
    [
      "Plátano",
      "La Casa del Pancake",
      "79",
      Colors.green,
      "lib/images/platanoconmantequilla_pancakes.png"
    ],
    [
      "Mermelada Fresa",
      "Pancakes & Co.",
      "89",
      Colors.orange,
      "lib/images/fresasymermelada_pancakes.png"
    ],
    [
      "Nutella y Plátano",
      "Crepas y Pancakes",
      "100",
      Colors.brown,
      "lib/images/nutellayplatano_pancakes.png"
    ],
    [
      "Avena con Frutas",
      "Pancakes Saludables",
      "75",
      Colors.deepOrange,
      "lib/images/avenaconfrutas_pancakes.png"
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
        return PancakesTile(
          pancakesFlavor: pancakesOnSale[index][0],
          pancakesStore: pancakesOnSale[index][1],
          pancakesPrice: pancakesOnSale[index][2],
          pancakesColor: pancakesOnSale[index][3],
          imageName: pancakesOnSale[index][4],
          onAdd: onAdd,
        );
      },
    );
  }
}
