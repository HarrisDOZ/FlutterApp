import 'package:flutter/material.dart';

class SearchHouse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 100,
            child: Center(
                child: Image.network(
                    "https://img.vivanuncios.com.mx/api/v1/mx-ads/images/c1/c161293e-6e46-4a06-9bee-d4897d4caf6a?rule=s-I72.auto")),
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "Contacto",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Direccion",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
          ),
        )
      ],
    );
  }
}
