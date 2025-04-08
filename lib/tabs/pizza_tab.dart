import 'package:donut_app_4sa/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final Function(double) onAdd;
  PizzaTab({super.key, required this.onAdd});
  //list of burgers
  final List pizzasOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    [
      "Margarita Clásica",
      "Pizzas Bella",
      "190",
      Colors.green,
      "lib/images/margarita_pizza.png"
    ],
    [
      "Pepperoni",
      "Pizzas del Valle",
      "199",
      Colors.red,
      "lib/images/pepperoni_pizza.png"
    ],
    [
      "Hawaiana",
      "Pizza Tropical",
      "210",
      Colors.yellow,
      "lib/images/hawaiana_pizza.png"
    ],
    [
      "Cuatro Quesos",
      "La Pizzería",
      "249",
      Colors.orange,
      "lib/images/cuatroquesos_pizza.png"
    ],
    [
      "Vegetariana",
      "Verde Pizza",
      "209",
      Colors.green,
      "lib/images/vegetariana_pizza.png"
    ],
    ["BBQ", "Pizza Express", "199", Colors.brown, "lib/images/bbq_pizza.png"],
    [
      "Carbonara",
      "Pizzas Gourmet",
      "240",
      Colors.purple,
      "lib/images/carbonara_pizza.png"
    ],
    [
      "Capricciosa",
      "Pizza del Mar",
      "235",
      Colors.blue,
      "lib/images/capricciosa_pizza.png"
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
        return PizzaTile(
            pizzaFlavor: pizzasOnSale[index][0],
            pizzaStore: pizzasOnSale[index][1],
            pizzaPrice: pizzasOnSale[index][2],
            pizzaColor: pizzasOnSale[index][3],
            imageName: pizzasOnSale[index][4],
            onAdd: onAdd);
      },
    );
  }
}
