import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  //Ruta del archivo
  final String iconPath;
  final String label;

  const MyTab({super.key, required this.iconPath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 70,
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  //Bordes redondeados
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(
                //Ruta del archivo
                iconPath,
                color: Colors.grey[600],
                height: 30,
              )),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(fontSize: 9.3, color: Colors.blueGrey),
          )
        ],
      ),
    );
  }
}
