import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(double) onAdd;
  DonutTab({super.key, required this.onAdd});
  //list of donuts
  final List<List<dynamic>> donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    [
      "Glaseada Clásica",
      "Donas Doña Glaseada",
      "29",
      Colors.orange,
      "lib/images/glaseada_donut.png"
    ],
    [
      "ChocoRellena ",
      "ChocoDon",
      "39",
      Colors.pink,
      "lib/images/choco_donut.png"
    ],
    [
      "Maple y Tocino",
      "Dona Rústica",
      "35",
      Colors.brown,
      "lib/images/mapletocino_donut.png"
    ],
    [
      "Fresa con Chispas",
      "La Rosita Donas",
      "40",
      Colors.red,
      "lib/images/fresaconchispas_donut.png"
    ],
    [
      "Red Velvet",
      "Donas Escarlata",
      "29",
      Colors.purple,
      "lib/images/redvelvet_donut.png"
    ],
    [
      "Cookies & Cream",
      "Dona Galleta",
      "35",
      Colors.grey,
      "lib/images/cookiesandcream_donut.png"
    ],
    [
      "Chocolate",
      "Dulce Nube",
      "25",
      Colors.lightBlue,
      "lib/images/chocolateychispas_donut.png"
    ],
    [
      "Canela y Azúcar",
      "Tradición de Canela",
      "30",
      Colors.yellow,
      "lib/images/canelayazucar_donut.png"
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
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutShop: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
          onAdd: onAdd,
        );
      },
    );
  }
}
