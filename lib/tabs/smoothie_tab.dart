import 'package:donut_app_4sa/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  final Function(double) onAdd;
  SmoothieTab({super.key, required this.onAdd});
  //list of burgers
  final List<List<dynamic>> smoothiesOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    [
      "Fresa y Plátano",
      "La Frutería Natural",
      "79",
      Colors.pink,
      "lib/images/fresaplatanio_smoothie.png"
    ],
    [
      "Mango Tropical",
      "Delirio de Mango",
      "69",
      Colors.orange,
      "lib/images/mangotropical_smoothie.png"
    ],
    [
      "Moras Silvestres",
      "BayaBaya",
      "75",
      Colors.purple,
      "lib/images/moras_smoothie.png"
    ],
    [
      "Choco-Proteína",
      "Energía Fit",
      "85",
      Colors.brown,
      "lib/images/chocolateproteina_smoothie.png"
    ],
    [
      "Piña y Coco",
      "Smoothie Paraíso",
      "89",
      Colors.yellow,
      "lib/images/piñacoco_smoothie.png"
    ],
    [
      "Verde Detox",
      "Vital Verde",
      "79",
      Colors.green,
      "lib/images/verdedetox_smoothie.png"
    ],
    [
      "Papaya y Naranja",
      "TropiMix",
      "70",
      Colors.lightBlue,
      "lib/images/papayanaranja_smoothie.png"
    ],
    [
      "Avena-Plátano",
      "Desayuno en Vaso",
      "69",
      Colors.grey,
      "lib/images/avenaplatano_smoothie.png"
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
        return SmoothieTile(
          smoothieFlavor: smoothiesOnSale[index][0],
          smoothieStore: smoothiesOnSale[index][1],
          smoothiePrice: smoothiesOnSale[index][2],
          smoothieColor: smoothiesOnSale[index][3],
          imageName: smoothiesOnSale[index][4],
          onAdd: onAdd,
        );
      },
    );
  }
}
