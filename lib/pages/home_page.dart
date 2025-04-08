import 'package:donut_app_4sa/tabs/burger_tab.dart';
import 'package:donut_app_4sa/tabs/donut_tab.dart';
import 'package:donut_app_4sa/tabs/pancakes_tab.dart';
import 'package:donut_app_4sa/tabs/pizza_tab.dart';
import 'package:donut_app_4sa/tabs/smoothie_tab.dart';
import 'package:donut_app_4sa/utils/my_tab.dart';
import 'package:donut_app_4sa/utils/shopping_cart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    const MyTab(
      iconPath: 'lib/icons/donut.png',
      label: 'Donuts',
    ),
    const MyTab(
      iconPath: 'lib/icons/burger.png',
      label: 'Burgers',
    ),
    const MyTab(
      iconPath: 'lib/icons/smoothie.png',
      label: 'Smoothies',
    ),
    const MyTab(
      iconPath: 'lib/icons/pancakes.png',
      label: 'Pancakes',
    ),
    const MyTab(
      iconPath: 'lib/icons/pizza.png',
      label: 'Pizzas',
    ),
  ];

  int itemCount = 0; //cantidad de items en el carrito
  double totalPrice = 0.0; //total de la compra

  //Método para agregar un producto al carrito
  void addItemToCart(double price) {
    setState(() {
      itemCount++;
      totalPrice += price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              //Icono de la izquierda
              leading: Icon(Icons.menu, color: Colors.grey[800]),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Icon(Icons.person),
                )
              ]),
          body: Column(
            children: [
              //1. Texto Principal (Text)
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 24.0),
                child: Row(
                  children: [
                    Text("I want to ", style: TextStyle(fontSize: 32)),
                    Text("Eat...",
                        style: TextStyle(
                          //Tamano de la fuente
                          fontSize: 32,
                          //Negritas
                          fontWeight: FontWeight.bold,
                          //Subrayado
                          decoration: TextDecoration.underline,
                        )),
                  ],
                ),
              ),
              //2. Pestañas (TabBar)
              TabBar(tabs: myTabs),

              //3. Contenido de pestañas (TabBarView)
              Expanded(
                child: TabBarView(children: [
                  DonutTab(onAdd: addItemToCart),
                  BurgerTab(onAdd: addItemToCart),
                  SmoothieTab(onAdd: addItemToCart),
                  PancakesTab(onAdd: addItemToCart),
                  PizzaTab(onAdd: addItemToCart)
                ]),
              ),

              //4. Carrito (Cart)
              ShoppingCart(itemCount: itemCount, totalPrice: totalPrice),
            ],
          )),
    );
  }
}
